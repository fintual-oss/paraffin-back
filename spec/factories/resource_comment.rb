FactoryBot.define do
  factory :resource_comment do
    content { "This is a comment's content" }
    association :resource, factory: :resource
    association :user, factory: :user
  end
end
