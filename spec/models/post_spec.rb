require 'rails_helper'

RSpec.describe Post do
  it { should belong_to(:user) }

  context 'attributes' do
    subject { build :post }

    it { expect(subject.title).to be_present }
    it { expect(subject.content).to be_present }
  end
end