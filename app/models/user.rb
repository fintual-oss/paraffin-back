class User < ApplicationRecord
  has_many :resources
  has_many :resource_comments
end
