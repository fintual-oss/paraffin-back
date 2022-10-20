FactoryBot.define do
  factory :cycle do
    association :curriculum, factory: :curriculum
    name { 'MyString' }
    order_number { 1 }
    learning_goals_description { 'MyText' }
    challenge_description { 'MyText' }
    boilerplate_url { 'https://fakeurl.com' }
  end
end
