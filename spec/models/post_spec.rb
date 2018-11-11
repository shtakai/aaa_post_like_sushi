require 'rails_helper'

RSpec.describe Post do
  it { should belong_to(:user) }
  it { should validate_length_of(:title).
       is_at_least(5).
       is_at_most(100)
  }
  it { should validate_length_of(:content).
       is_at_least(5).
       is_at_most(1000)
  }

  context 'attributes' do
    subject { build :post }

    it { expect(subject.title).to be_present }
    it { expect(subject.content).to be_present }
  end
end
