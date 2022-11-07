# == Schema Information
#
# Table name: completed_resources
#
#  id          :bigint           not null, primary key
#  resource_id :bigint           not null
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class CompletedResource < ApplicationRecord
  belongs_to :user
  belongs_to :resource

  validates :user, uniqueness: { scope: [:resource] }
end
