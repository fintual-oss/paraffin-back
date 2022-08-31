class ResourceEvaluation < ApplicationRecord
  belongs_to :resource
  belongs_to :user

  validates :resource, presence: true
  validates :user, presence: true
end
