class AnswersController < ApplicationController
  before_action :redirect, only: :new
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
    # 回答を新規登録する際には、その回答に対王するquestionのidも関連づけて保存したいので、@answerのプロパティ値としてセットしておく。
  end

  def create
    @answer = Answer.create(create_params)
  end



  private
  def create_params
    params.require(:answer).permit(:question_id, :text).merge(user_id: current_user.id)
  end

  def redirect
    if Answer.exists?(question_id: params[:question_id], user_id: current_user.id)
      redirect_to :root
    end
  end
end
