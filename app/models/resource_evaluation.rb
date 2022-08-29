class ResourceEvaluation < ApplicationRecord
  belongs_to :resource
  belongs_to :user

  validates :evaluation, numericality: { only_integer: true }, in: 1..10
end
