require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'validations' do
    it { should validate_presence_of (:question) }
    it { should validate_presence_of (:answer) }
  end

  describe 'relationships' do
    it { should belong_to (:quiz) }
    it { should have_one(:user).through(:quiz) }
  end
end
