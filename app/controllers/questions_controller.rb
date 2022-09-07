class QuestionsController < ApplicationController
  before_action :current_question, only: [:show, :update]

  def show
  end

  def update
    @question.update(guess: params[:guess])
    next_question = @question.number + 1
    if next_question <= current_quiz.questions.count
      redirect_to "/questions/#{next_question}"
    else
      current_quiz.calculate_score
      redirect_to "/quizzes/#{current_quiz.id}"
    end
  end

  private
  def question_params
    params.permit(:guess, :question, :answer)
  end

  def current_question
    @question = current_quiz.current_question(params[:id].to_i)
  end
end
