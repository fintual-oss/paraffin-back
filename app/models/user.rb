class User < ApplicationRecord
  has_many :resources
  has_many :resource_comments
  has_many :resource_evaluations
end
