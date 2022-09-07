# == Schema Information
#
# Table name: curriculum_affiliations
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  curriculum_id    :bigint
#  learning_unit_id :bigint
#
require 'rails_helper'

RSpec.describe CurriculumAffiliation, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:curriculum_affiliation)).to be_valid
    end
  end
end
