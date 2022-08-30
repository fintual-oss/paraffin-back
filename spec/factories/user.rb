FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    sequence :email do |n|
      "john_#{n}@example.com"
    end
    password { 'password' }
  end
end
