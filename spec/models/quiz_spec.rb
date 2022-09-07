require 'rails_helper'

RSpec.describe Quiz, type: :model do
  describe 'validations' do
    it { should validate_presence_of (:level) }
    it { should validate_presence_of (:region) }
    it { should define_enum_for(:level) }
    it { should define_enum_for(:region) }
  end

  describe 'relationships' do
    it { should have_many(:questions) }
    it { should belong_to(:user) }
  end

  describe 'instance methods' do
    before do
      @country_sample = JSON.parse(File.read('spec/fixtures/easy_americas_sample.json'), symbolize_names: true)
      allow(CountryFacade).to receive(:fetch_countries).and_return(@country_sample)
      @user = User.create!(first_name: "Susan", last_name: "B", email: "sue@email.com", photo: "photo")
      @quiz = @user.quizzes.create!(level: "easy", region: "americas")
    end

    it 'create_questions' do
      @quiz.create_questions
      questions = @quiz.questions.all?{|question| question.instance_of?(Question)}

      expect(@quiz.questions.count).to eq(15)
      expect(questions).to be true
    end

    it 'current_question' do
      @quiz.create_questions
      question = @quiz.current_question(4)
      expect(question.number).to eq(4)
    end

    it 'calculate_score' do
      10.times do
        @quiz.questions.create!(question: "question", answer: "answer", guess: "answer", correct: true)
      end
      5.times do
        @quiz.questions.create!(question: "question", answer: "answer", guess: "not the answer", correct: false)
      end

      @quiz.calculate_score
      expect(@quiz.score).to eq(66.67)
    end
  end
end
