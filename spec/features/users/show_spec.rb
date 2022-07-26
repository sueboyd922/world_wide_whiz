require 'rails_helper'

RSpec.describe 'users show page' do
  before do
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_oauth2]
    visit '/'
    click_on("Sign in with Google")
  end

  describe 'you can start a new quiz' do
    it 'has a button to start a new quiz' do
      visit '/dashboard'

      click_on("New Quiz")
      expect(current_path).to eq("/quizzes/new")
    end
  end
end
