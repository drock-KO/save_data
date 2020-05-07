class CommentsController < ApplicationController
  def create
    # binding.pry
    @comment = Comment.create(comment_params)
    respond_to do |f|
      f.html { redirect_to tweet_path(params[:tweet_id]) }
      f.json
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end
end
