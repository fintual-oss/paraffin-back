FactoryBot.define do
  factory :completed_learning_unit do
    association :learning_unit, factory: :learning_unit
    association :user, factory: :user
  end
end
