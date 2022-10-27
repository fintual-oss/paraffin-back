# == Schema Information
#
# Table name: resources
#
#  id               :bigint           not null, primary key
#  name             :string
#  url              :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint
#  learning_unit_id :bigint
#
class Resource < ApplicationRecord
  belongs_to :user
  belongs_to :learning_unit
  has_many :resource_comments
  has_many :resource_evaluations
  has_many :resource_tags
  has_many :tags, through: :resource_tags

  validates :url, url: { allow_blank: false }

  private

  def average_evaluation
    resource_evaluations.average(:evaluation)
  end

  def number_of_evaluations
    resource_evaluations.count(:evaluation)
  end
end
