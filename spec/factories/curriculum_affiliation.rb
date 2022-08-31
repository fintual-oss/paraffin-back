FactoryBot.define do
  factory :curriculum_affiliation do
    association :curriculum, factory: :curriculum
    association :learning_unit, factory: :learning_unit
  end
end
