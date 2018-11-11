require 'rails_helper'

RSpec.describe 'Sign Up', type: :system do
  it 'user successfully signs up' do
    visit root_path
    click_link 'Sign Up'

    # expect do
      fill_in 'Username', with: Faker::Hacker.noun
      fill_in 'Email',	with: 'test@example.com'
      fill_in 'Password',	with: 'test123'
      fill_in 'Password confirmation',	with: 'test123'
      click_button 'Sign up'
    # end.to change(User, :count).by(1)
    expect(page).to \
        have_content 'Welcome! You have signed up successfully.'
    expect(current_path).to eq root_path
  end
end
