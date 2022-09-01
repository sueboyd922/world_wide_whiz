class ApplicationController < ActionController::Base
  helper_method :current_user, :current_quiz

  def current_user
    User.find(session[:user])
  end

  def current_quiz_questions
    # quiz = Quiz.find(session[:current_quiz])
    @questions ||= Country.quiz_questions_hash(current_quiz.fetch_quiz_countries)
  end

  def current_quiz
    Quiz.find(session[:current_quiz])
  end
end
