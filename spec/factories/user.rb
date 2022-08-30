FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    sequence :email do |n|
      "john_#{n}@example.com"
    end
    password { 'password' }
    reset_password_token { '1234567890' }
  end
end
