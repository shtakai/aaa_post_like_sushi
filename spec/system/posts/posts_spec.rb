require 'rails_helper'

RSpec.describe 'create post', type: :system do
  let(:post) { create :post }
  let(:user) { post.user }

  describe '#create' do
    context 'registered user' do
      it 'can create post' do
        sign_in user
        visit new_post_path
        expect(page).to have_content('new post')
        fill_in 'Title', with: Faker::Name.unique.name
        fill_in 'Content', with: Faker::Hipster.sentence(5)
        click_button 'Create Post'
        expect(current_path).to eq post_path(Post.last)
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

  describe '#destroy' do
    context 'created user' do
      it 'can delete post' do
        sign_in user
        visit posts_path
        # save_and_open_page
        expect do
          click_link 'Delete post'
        end.to change(Post, :count).by(-1)
        expect(page).to have_content 'post deleted'
      end
    end

    context 'user but not created one' do
      let(:post) { create :post }
      let(:user) { create :user }

      it 'can not see "Delete post"' do
        sign_in user
        visit posts_path

        expect(page).not_to have_content 'Delete post'
      end
    end

    context 'not user' do
      it 'redirect to log in page' do
        visit posts_path
        expect(current_path).to eq new_user_session_path
      end
    end
  end

  describe '#update' do
    context 'created user' do
      it 'can delete post' do
        sign_in user
        visit posts_path
        click_link 'Edit post'
        expect(current_path).to eq edit_post_path post
        fill_in 'Title', with: Faker::Name.unique.name
        fill_in 'Content', with: Faker::Hipster.sentence(5)
        click_button 'Create Post'
        expect(page).to have_content 'post updated'
      end
    end

    context 'user but not created one' do
      let(:post) { create :post }
      let(:user) { create :user }

      it 'can not see "Delete post"' do
        sign_in user
        visit posts_path

        expect(page).not_to have_content 'Edit post'
      end
    end

    context 'not user' do
      it 'redirect to log in page' do
        visit posts_path
        expect(current_path).to eq new_user_session_path
      end
    end
  end
end

