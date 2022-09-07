class QuizzesController < ApplicationController

  def new
  end

  def show
  end

  def create
    quiz = Quiz.new(quiz_params)
    quiz.user = current_user
    if quiz.save
      session[:current_quiz] = quiz.id
      quiz.create_questions
      redirect_to "/questions/1"
    end
  end

  private
  def quiz_params
    params.permit(:region, :level)
  end
end
