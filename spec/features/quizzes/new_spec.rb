require 'rails_helper'

RSpec.describe 'new quiz page' do
  before do
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_oauth2]
    visit '/'
    click_on("Sign in with Google")
  end

  describe 'creating a new quiz' do
    it 'creates a new quiz' do
      visit '/quizzes/new'

      choose('Africa')
      click_on("Start")
    end
  end
end
