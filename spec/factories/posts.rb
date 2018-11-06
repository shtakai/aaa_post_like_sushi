FactoryBot.define do
  factory :post do
    association :user, factory: :user, strategy: :build

    title { Faker::Book.title }
    content { Faker::Lorem.sentences.join(' ') }
  end
end