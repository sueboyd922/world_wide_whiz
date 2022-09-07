class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions

  validates_presence_of :level, :region
  enum level: ["easy", "hard", "random", "full"]
  enum region: ["americas", "africa", "asia", "europe", "oceania"]

  def create_questions
    countries = CountryFacade.fetch_countries(self.level, self.region)
    num = 0
    countries.each do |country|
      num += 1
      question = country[:name][:common]
      answer = country[:capital].first
      country_code = country[:cca3]
      questions.create!(question: question, answer: answer, country_code: country_code, number: num)
    end
  end

  def current_question(num)
    questions.where(number: num).first
  end

  def calculate_score
    num_correct = questions.where(correct: true).count
    total_num = questions.count
    total_score = (num_correct / total_num.to_f ) * 100
    update(score: total_score.round(2))
  end
end
