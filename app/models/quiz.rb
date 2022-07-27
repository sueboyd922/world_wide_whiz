class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions

  validates_presence_of :level, :region
  enum level: ["easy", "hard", "random", "full"]
  enum region: ["americas", "africa", "asia", "europe", "oceania"]

  def create_questions
    countries = CountryFacade.fetch_countries(self.level, self.region)
  end
end
