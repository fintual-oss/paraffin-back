# == Schema Information
#
# Table name: cycles
#
#  id              :bigint           not null, primary key
#  curriculum_id   :integer
#  name            :string
#  learning_goals  :text
#  challenge       :text
#  boilerplate_url :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :cycle do
    curriculum_id { 1 }
    name { 'MyString' }
    learning_goals { 'MyText' }
    challenge { 'MyText' }
    boilerplate_url { 'MyString' }
  end
end
