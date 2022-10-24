# == Schema Information
#
# Table name: cycle_learning_units
#
#  id               :bigint           not null, primary key
#  cycle_id         :integer          not null
#  learning_unit_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
FactoryBot.define do
  factory :cycle_learning_unit do
    association :cycle, factory: :cycle
    association :learning_unit, factory: :learning_unit
  end
end
