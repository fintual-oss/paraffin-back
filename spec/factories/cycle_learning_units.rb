FactoryBot.define do
  factory :cycle_learning_unit do
    association :cycle, factory: :cycle
    association :learning_unit, factory: :learning_unit
  end
end
