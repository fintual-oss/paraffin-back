class Label < ApplicationRecord
  has_many :resource_labels
  has_many :resources, through: :resource_labels

  validates :name, :icon, presence: true
end
