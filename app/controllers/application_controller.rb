class ApplicationController < ActionController::Base
  helper_method :current_user, :current_quiz, :current_quiz_questions

  def current_user
    User.find(session[:user])
  end

  def current_quiz_questions
    require "pry"; binding.pry
    @questions ||= current_quiz.fetch_quiz_countries
    @quiz_questions ||= Country.quiz_questions_hash(@questions)
    # require "pry"; binding.pry
  end


  def current_quiz
    Quiz.find(session[:current_quiz])
  end
end
