# == Schema Information
#
# Table name: resource_evaluations
#
#  id          :bigint           not null, primary key
#  evaluation  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  resource_id :bigint
#  user_id     :bigint
#
class ResourceEvaluation < ApplicationRecord
  belongs_to :resource
  belongs_to :user

  validates :user, uniqueness: { scope: [:resource] }
end
