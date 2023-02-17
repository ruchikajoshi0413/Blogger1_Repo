FactoryBot.define do
  factory :author do
    username { 'Ruchika' }
    email { Faker::Internet.email }
  end
end
