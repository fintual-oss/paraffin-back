class Tag < ApplicationRecord
  has_many :resource_evaluations

  validates :name, :icon, presence: true
end
