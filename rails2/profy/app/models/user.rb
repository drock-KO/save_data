class User < ApplicationRecord
  
  has_one_attached :image 
  
  #attr_accessor・・・DBにカラムを書かなくとも、モデル紐づいた値が入力された際、即座に値を割り当てる事ができる。
  #マイグレーションファイルでカラムを定義する事と同義。
  #読み取りも書き取りも両方できる。挙動確認は'test.rb'へ。
  attr_accessor :group_key
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable,
         authentication_keys: [:email, :group_key]
         
  belongs_to :group
  has_many :questions, ->{ order("created_at DESC") }
  has_many :answers, ->{ order("updated_at DESC") }
  
  # # has_many, throughオプション・・・多対多を関連付けでどのモデルを経由するか設定する。
  # sourceオプション・・・関連テーブルから先のモデルにアクセスするための(関連モデルから見た)関連名を指定できる
  has_many :answered_questions, through: :answers, source: :question

  validates :family_name, :first_name, :family_name_kana, :first_name_kana, :image, presence: true
  
  #before_validatiion・・・全ての検証(バリデーション)が発動する前に一度だけ実行するメソッド
  #↑のメソッドに、プライベートメソッドを指定し、そのメソッドには検証前の処理を定義する。
  #下記の文法の挙動は、validationがかかる前にメソッドを動かし、もしgroup_keyカラムの値を持っていればgroup_keyを参照し、group_idをuserのテーブルに保存
  before_validation :group_key_to_id, if: :has_group_key?

  def self.find_first_by_auth_conditions(warden_conditions)
    #dupメソッド・・・対象のオブジェクトのコピーを作成
    conditions = warden_conditions.dup
    group_key = conditions.delete(:group_key)
    group_id = Group.where(key: group_key).first
    email = conditions.delete(:email) || conditions.delete(:unconfirmed_email)

      if group_id && email
        #find_by・・・引数で指定したカラムを使ってレコードを検索し、最初にヒットしたものを返す。
        find_by(group_id: group_id, email: email)
        #jas_key?・・・ハッシュが引数内のkeyと同じキーを持っていればtrue、なければfalseを返す。
      elsif conditions.has_key?(:confirmation_token)
        #firstメソッド・・・配列の最初の要素を返す。引数を指定すれば、先頭からその数だけ要素を取り出して、配列にして返す。
        where(conditions).first
      elsif email
        where(email: email).first
      else
        false
      end
  end
  
  def name
    "#{family_name}#{first_name}"
  end
  
  def kana
    "#{family_name_kana}#{first_name_kana}"
  end
  
  def full_profile?
    # image.attached?・・・画像のアップロードがされているかどうかを確認するためのActiveStorageのメソッド。
    image.attached? && family_name? && first_name? && family_name_kana? && first_name_kana?
  end
  
    private
  def has_group_key?
    group_key.present?
  end

  def group_key_to_id
    #first_or_create・・・レコード新規生成時、検索条件に合致するレコードが存在する場合にはそのレコードを参照し、無ければ検索条件の内容で新しいレコードを新規保する。
    group = Group.where(key: group_key).first_or_create
    self.group_id = group.id
  end
end