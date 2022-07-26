class QuizzesController < ApplicationController

  def new
  end

  def create
    quiz = Quiz.new(quiz_params)
    quiz.user = current_user
    quiz.save
  end

  private
  def quiz_params
    params.permit(:region, :level)
  end
end
