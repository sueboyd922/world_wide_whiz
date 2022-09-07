class ChangeScoreToBeFloatInQuizzes < ActiveRecord::Migration[6.0]
  def change
    change_column :quizzes, :score, :float
  end
end
