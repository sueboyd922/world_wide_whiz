class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.string :question
      t.string :answer
      t.string :guess
      t.boolean :correct

      t.timestamps
    end
  end
end
