class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    
    # uniqメソッド・・・配列の中で重複している要素を取り除いた値を返す。
    @questions = @user.answered_questions.uniq
  end
  
  def edit
   
  end

  def update
   user = current_user.update(update_params)
   if user.present?
     redirect_to user_path(current_user), notice: 'プロフィールを更新しました。'
   else
     redirect_to edit_user_path(current_user), alert: '情報を正しく入力してください。'
   end
  end
  
  private
   def update_params
    params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :image)
   end
end
