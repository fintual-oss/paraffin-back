class Label < ApplicationRecord
  has_many :resource_labels

  validates :name, :description, presence: true
end
