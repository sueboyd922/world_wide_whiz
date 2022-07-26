require 'rails_helper'

RSpec.describe 'home page' do
  before do
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_oauth2]
  end

  it 'has a button to login/register with google' do
    visit '/'

    expect(page).to have_button("Sign in with Google")
    click_on("Sign in with Google")
    expect(current_path).to eq("/dashboard")
  end
end
