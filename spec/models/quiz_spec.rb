require 'rails_helper'

RSpec.describe Quiz, type: :model do
  describe 'validations' do
    it { should validate_presence_of (:level) }
    it { should validate_presence_of (:region) }
    it { should define_enum_for(:level) }
    it { should define_enum_for(:region) }
  end

  describe 'relationships' do
    it { should have_many(:questions) }
    it { should belong_to(:user) }
  end
end
