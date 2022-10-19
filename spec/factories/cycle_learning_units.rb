# == Schema Information
#
# Table name: cycle_learning_units
#
#  id               :bigint           not null, primary key
#  cycle_id         :integer
#  learning_unit_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
FactoryBot.define do
  factory :cycle_learning_unit do
    cycle_id { 1 }
    learning_unit_id { 1 }
  end
end
