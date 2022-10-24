FactoryBot.define do
  factory :learning_unit_succession do
    association :cycle, factory: :cycle
    predecessor { create(:learning_unit) }
    successor { create(:learning_unit) }
  end
end
