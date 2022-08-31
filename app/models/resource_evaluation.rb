class ResourceEvaluation < ApplicationRecord
  belongs_to :resource
  belongs_to :user

  validates :user, uniqueness: { scope: [:resource] }
end
