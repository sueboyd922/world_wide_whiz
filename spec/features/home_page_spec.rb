require 'rails_helper'

RSpec.describe 'home page' do
  it 'has a button to login/register with google' do
    visit '/'

    expect(page).to have_button("Sign in with Google")
  end
end
