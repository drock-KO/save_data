class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      # unique: true・・・データベースにおける他の行の値と重複しないように制約をかける事。
      t.string :key, unique: true
      t.text :detail
      t.timestamps
    end
  end
end
