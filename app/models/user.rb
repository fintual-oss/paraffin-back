class User < ApplicationRecord
  has_many :resources
  has_many :resource_comments
  has_many :resource_evaluations
  has_many :completed_learning_units
end
