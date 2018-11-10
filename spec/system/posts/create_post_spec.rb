require 'rails_helper'

RSpec.describe 'create post', type: :system do
  let(:user) { create :user }

  context 'registered user' do
    it 'can create post' do
      sign_in user
      visit new_post_path
      expect(page).to have_content('new post')
      fill_in 'Title', with: Faker::Name.unique.name
      fill_in 'Content', with: Faker::Hipster.sentence(5)
      click_button 'Create Post'
      expect(current_path).to eq posts_path
      expect(page).to have_content('new post created')
    end
  end

  context 'not registered user' do
    it 'redirect to login page' do
      visit new_post_path
      expect(page).to have_content('Log in')
      expect(current_path).to eq new_user_session_path
    end
  end
end

