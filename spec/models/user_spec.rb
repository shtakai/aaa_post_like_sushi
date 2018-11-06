require 'rails_helper'

RSpec.describe User do
  it { should have_many :posts }

  context 'attributes' do
    subject { build(:user) }

    it { expect(subject.username).to be_present }
    it { expect(subject.email).to be_present }
  end

  context 'validation' do
    let(:user) { build :user }
    let(:user_without_username) { build(:user, username: '' ) }
    let(:user_without_email) { build(:user, email: '' ) }

    it { expect(user).to be_valid }
    it { expect(user_without_username).not_to be_valid }
    it { expect(user_without_email).not_to be_valid }
  end
end