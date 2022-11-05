FactoryBot.define do
  factory :user_cycle_state do
    association :user, factory: :user
    association :cycle, factory: :cycle
    repository_link { 'https://fakeurl.com' }
    completed_at { '2022-11-05 19:47:04' }
    reviewer_id { 2 }
  end
end
