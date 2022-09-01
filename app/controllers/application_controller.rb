class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    User.find(session[:user])
  end

  def current_quiz_questions
    quiz = session[:current_quiz]
    require "pry"; binding.pry
    Country.quiz_questions_hash(quiz.fetch_quiz_countries)
  end
end
