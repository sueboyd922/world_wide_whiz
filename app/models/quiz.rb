class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions

  validates_presence_of :level, :region
  enum level: ["easy", "hard", "random", "full"]
  enum region: ["americas", "africa", "asia", "europe", "oceania"]

  def fetch_quiz_countries
    countries = CountryFacade.fetch_countries(self.level, self.region)
    num = 0
    countries.map do |country|
      num += 1
      Country.new(country, num)
    end
  end

  def calculate_score
    num_correct = questions.where(correct: true).count
    total_num = questions.count
    total_score = (num_correct / total_num.to_f ) * 100
    update(score: total_score.round)
  end
end
