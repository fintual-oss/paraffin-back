FactoryBot.define do
  factory :resource_evaluation do
    evaluation { 3 }
    association :resource, factory: :resource
    association :user, factory: :user
  end
end
