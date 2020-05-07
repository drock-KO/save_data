class TopController < ApplicationController
  def index
    @question = Question.new
    @feed_contents = current_user.group.feed_contents.includes(:content).page(params[:page]).per(5)
    # (&:content)・・・mapやeachを使う際の記述「|content| content.map」の代わりの記述。
    @feed_contents_resource = @feed_contents.map(&:content)
  end
end
