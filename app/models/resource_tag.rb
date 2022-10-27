class ResourceTag < ApplicationRecord
  belongs_to :resource
  belongs_to :tag

  validates :resource, :tag, :presence => true
end
