FactoryBot.define do
  factory :completed_resource do
    association :resource, factory: :resource
    association :user, factory: :user
  end
end
