class ResourceEvaluation < ApplicationRecord
  belongs_to :resource
  belongs_to :user

  validates_uniqueness_of :user, scope: [:resource]
end
