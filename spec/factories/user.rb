FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    email { 'john@example.com' }
    password { 'password' }
    reset_password_token { '1234567890' }
  end
end
