FactoryBot.define do
  factory :resource_tag do
    association :resource, factory: :resource
    association :tag, factory: :tag
  end
end
