class AnswersController < ApplicationController
  
  before_action :redirect, only: :new
  
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
  end

  def create
    @answer = Answer.create(create_params)
      if @answer.present?
        redirect_to root_path, notice: '回答の投稿が完了しました。'
      else
        redirect_to new_answer_path(@question), alert: '情報を正しく入力してください。'
      end
  end
  
  def edit
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end
  
  def update
    answer = Answer.find(params[:id])
    @question = answer.question
    answer.update(update_params)
  end
  
    private
     def create_params
       params.require(:answer).permit(:question_id, :text).merge(user_id: current_user.id)
     end
     
     def update_params
       params.require(:answer).permit(:text)
     end
     
     def redirect
       if Answer.exists?(question_id: params[:question_id], user_id: current_user.id)  
         redirect_to :root
       end
     end   
end

