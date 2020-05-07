class ApplicationController < ActionController::Base
  # authenticate_user!・・・ユーザがログインしているかどうかを確認し、ログインしていない場合はユーザをログインページにリダイレクトするdeviseのメソッド
  before_action :authenticate_user!
  
  #configure_permitted_parameters・・・deviseで使えるストロングパラメーターの値を追加する事を許可する。
  #devise_controller?・・・「deviseに関する画面にいった時」という意味のヘルパーメソッド。
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    #devise_parameter_sanitizer・・・deviseでデフォルト以外の項目を追加したい場合に使うメソッド。
    devise_parameter_sanitizer.permit(:sign_in, keys:[:group_key])
    devise_parameter_sanitizer.permit(:sign_up, keys:[:group_key])
    devise_parameter_sanitizer.permit(:account_update, keys:[:group_key])
  end
  
end
