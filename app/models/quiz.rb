class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions

  validates_presence_of :level, :region
  enum level: ["easy", "hard", "random", "full"]
  enum region: ["americas", "africa", "asia", "europe", "oceania"]
end
