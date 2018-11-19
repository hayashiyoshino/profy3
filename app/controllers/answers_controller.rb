class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
    # 回答を新規登録する際には、その回答に対王するquestionのidも関連づけて保存したいので、@answerのプロパティ値としてセットしておく。
  end
end
