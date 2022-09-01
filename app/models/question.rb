class Question < ApplicationRecord
  belongs_to :quiz
  has_one :user, :through => :quiz
  after_create :is_correct?

  validates_presence_of :question, :answer

  def is_correct?
    if guess.downcase == answer.downcase
      update(correct: true)
    else
      update(correct: false)
    end
  end
end
