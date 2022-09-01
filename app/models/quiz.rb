class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions

  validates_presence_of :level, :region
  enum level: ["easy", "hard", "random", "full"]
  enum region: ["americas", "africa", "asia", "europe", "oceania"]

  def fetch_quiz_countries
    countries = CountryFacade.fetch_countries(self.level, self.region)
    countries.map do |country|
      Country.new(country)
    end
  end
end
