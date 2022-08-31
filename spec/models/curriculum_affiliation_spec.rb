require 'rails_helper'

RSpec.describe CurriculumAffiliation, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:curriculum_affiliation)).to be_valid
    end
  end

  it 'is valid with valid attributes'
  it 'is not valid without a curriculum_id'
  it 'is not valid without a learning_unit_id'
end
