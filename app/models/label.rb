class Label < ApplicationRecord
  has_many :resource_labels

  validates :name, :icon, presence: true
end
