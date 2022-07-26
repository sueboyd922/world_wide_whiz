class Question < ApplicationRecord
  belongs_to :quiz
  has_one :user, :through => :quiz

  validates_presence_of :question, :answer
end
