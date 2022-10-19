FactoryBot.define do
  factory :cycle do
    curriculum_id { 1 }
    name { 'MyString' }
    learning_goals_description { 'MyText' }
    challenge_description { 'MyText' }
    boilerplate_url { 'https://fakeurl.com' }
  end
end
