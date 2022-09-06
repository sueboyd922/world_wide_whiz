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
      # Country.quiz_questions(current_quiz.fetch_quiz_countries)
      current_quiz_questions
      require "pry"; binding.pry
      # questions = Country.quiz_questions_hash(current_quiz.fetch_quiz_countries)
      # session[:current_quiz_questions] = questions
      redirect_to "/questions/1"
    end
  end

  private
  def quiz_params
    params.permit(:region, :level)
  end
end
