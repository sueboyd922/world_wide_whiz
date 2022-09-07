class User < ApplicationRecord
  has_many :quizzes
  has_many :questions, through: :quizzes
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email
end
