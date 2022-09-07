require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'validations' do
    it { should validate_presence_of (:question) }
    it { should validate_presence_of (:answer) }
  end

  describe 'relationships' do
    it { should belong_to (:quiz) }
    it { should have_one(:user).through(:quiz) }
  end

  describe 'instance  methods' do
    it '#is_correct?' do
      user = User.create!(first_name: "Susan", last_name: "B", email: "sue@email.com", photo: "photo")
      quiz = user.quizzes.create!(level: "easy", region: "americas")
      question_1 = quiz.questions.create!(question: "Peru", answer: "Lima", guess: "lima")
      question_2 = quiz.questions.create!(question: "Peru", answer: "Lima", guess: "limaaa")

      expect(question_1.is_correct?).to eq(true)
      expect(question_2.is_correct?).to eq(false)
    end
  end

end
