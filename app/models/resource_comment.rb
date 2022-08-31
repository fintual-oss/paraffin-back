class ResourceComment < ApplicationRecord
  belongs_to :user
  belongs_to :resource

  validates :user, presence: true
  validates :resource, presence: true
end
