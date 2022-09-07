# == Schema Information
#
# Table name: curriculums
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Curriculum < ApplicationRecord
  has_many :curriculum_affiliations
  has_many :learning_units, through: :curriculum_affiliations

  validates :name, presence: true
end
