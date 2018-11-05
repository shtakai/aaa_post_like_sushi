FactoryBot.define do
  factory :user do
    username { Faker::FunnyName.name }
    email { Faker::Internet.email }
    password { 'Fuckk1ll' }
  end

  trait :no_username do
    username { '' }
  end

  trait :no_email do
    email { '' }
  end

  trait :no_password do
    password { '' }
  end
end