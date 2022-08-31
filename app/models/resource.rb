class Resource < ApplicationRecord
  belongs_to :user
  belongs_to :learning_unit
  has_many :resource_comments
  has_many :resource_evaluations

  validates :user, presence: true
  validates :learning_unit, presence: true
end
