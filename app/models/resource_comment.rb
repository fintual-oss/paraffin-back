# == Schema Information
#
# Table name: resource_comments
#
#  id          :bigint           not null, primary key
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#  resource_id :bigint
#
class ResourceComment < ApplicationRecord
  belongs_to :user
  belongs_to :resource
end
