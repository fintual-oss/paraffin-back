class Resource < ApplicationRecord
  belongs_to :user
  belongs_to :learning_unit
  has_many :resource_comments
end
