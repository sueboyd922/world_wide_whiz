class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.integer :level
      t.integer :region
      t.references :user, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
