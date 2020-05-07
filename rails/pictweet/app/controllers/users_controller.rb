class UsersController < ApplicationController
  def show
    # binding.pry
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @tweets = @user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end
end
