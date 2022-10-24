# == Schema Information
#
# Table name: cycles
#
#  id                         :bigint           not null, primary key
#  curriculum_id              :integer
#  name                       :string           not null
#  order_number               :integer          not null
#  learning_goals_description :text             not null
#  challenge_description      :text             not null
#  boilerplate_url            :string
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
FactoryBot.define do
  factory :cycle do
    association :curriculum, factory: :curriculum
    name { 'MyString' }
    order_number { 1 }
    learning_goals_description { 'MyText' }
    challenge_description { 'MyText' }
    boilerplate_url { 'https://fakeurl.com' }
  end
end
