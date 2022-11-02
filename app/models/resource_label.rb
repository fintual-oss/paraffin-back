class ResourceLabel < ApplicationRecord
  belongs_to :resource
  belongs_to :label

  validates :resource, :label, presence: true
end
