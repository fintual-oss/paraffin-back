FactoryBot.define do
  factory :resource do
    name { 'Ruby 101' }
    association :user, factory: :user
    association :learning_unit, factory: :learning_unit
  end
end
