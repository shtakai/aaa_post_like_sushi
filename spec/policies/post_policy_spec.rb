require 'rails_helper'

describe PostPolicy do
  let(:post) { create :post }
  subject { described_class.new(user, post) }



  context 'being a visitor' do
    let(:user) { nil }

    it { is_expected.to permit_action(:show) }
    it { is_expected.not_to permit_action(:new) }
    it { is_expected.not_to permit_action(:create) }
    it { is_expected.not_to permit_action(:update) }
    it { is_expected.not_to permit_action(:destroy) }
    it { is_expected.not_to permit_action(:edit) }
  end

  context 'being an owner' do
    let(:user) { post.user }

    it { is_expected.to permit_action(:show) }
    it { is_expected.to permit_action(:new) }
    it { is_expected.to permit_action(:create) }
    it { is_expected.to permit_action(:update) }
    it { is_expected.to permit_action(:edit) }
  end

  context 'being not an owner' do
    let(:user) { create :user }

    it { is_expected.to permit_action(:show) }
    it { is_expected.not_to permit_action(:new) }
    it { is_expected.not_to permit_action(:create) }
    it { is_expected.not_to permit_action(:update) }
    it { is_expected.not_to permit_action(:destroy) }
    it { is_expected.not_to permit_action(:edit) }
  end

  # context 'being an administrator' do
  #   let(:user) { User.create(administrator: true) }
  #
  #   it { is_expected.to permit_actions([:show, :destroy]) }
  # end
end