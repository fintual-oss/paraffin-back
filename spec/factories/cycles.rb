FactoryBot.define do
  factory :cycle do
    curriculum_id { 1 }
    name { 'MyString' }
    learning_goals { 'MyText' }
    challenge { 'MyText' }
    boilerplate_url { 'MyString' }
  end
end
