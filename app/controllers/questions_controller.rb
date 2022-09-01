class QuestionsController < ApplicationController

  def show
    current_quiz_questions
    @current_question = @questions[params[:id].to_i]
  end

  def create
    question = current_quiz.questions.create(question_params)
    next_question = params[:id].to_i + 1
    current_quiz_questions
    if next_question <= @questions.count
      redirect_to "/questions/#{params[:id].to_i + 1}"
    else
      current_quiz.calculate_score
      redirect_to "/quiz/#{current_quiz.id}"
    end
  end

  private
  def question_params
    params.permit(:guess, :question, :answer)
  end
end
