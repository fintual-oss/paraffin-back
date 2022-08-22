class Resource < ApplicationRecord
  belongs_to :user
  belongs_to :learning_unit
end
