class Question < ApplicationRecord
  belongs_to :quiz
  has_one :user, :through => :quiz
  before_update :is_correct?

  validates_presence_of :question, :answer

  def is_correct?
    if guess.downcase == answer.downcase
      self.correct = true
    else
      self.correct = false
    end
  end
end
