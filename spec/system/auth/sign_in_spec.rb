require 'rails_helper'

RSpec.describe 'Sign in', type: :system do
  let(:user) { FactoryBot.create(:user) }

  it 'user signs in' do
    visit root_path
    click_link 'Sign In'
    fill_in "Email",	with: user.email
    fill_in "Password",	with: user.password
    click_button 'Log in'
    expect(page).to have_content 'post index'
  end
end