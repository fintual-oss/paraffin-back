FactoryBot.define do
  factory :resource_label do
    association :resource, factory: :resource
    association :label, factory: :label
  end
end
