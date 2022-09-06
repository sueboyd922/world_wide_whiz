class QuestionsController < ApplicationController
  before_action :current_quiz_questions, only: [:show, :create]

  def show
    # current_quiz_questions
    # require "pry"; binding.pry
    @current_question = @quiz_questions[params[:id].to_i]
  end

  def create
    question = current_quiz.questions.create(question_params)
    next_question = params[:id].to_i + 1
    # require "pry"; binding.pry
    # current_quiz_questions
    if next_question <= @quiz_questions.count
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
end
