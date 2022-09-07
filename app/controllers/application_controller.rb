class ApplicationController < ActionController::Base
  helper_method :current_user, :current_quiz

  def current_user
    User.find(session[:user])
  end

  def current_quiz
    Quiz.find(session[:current_quiz])
  end
end
