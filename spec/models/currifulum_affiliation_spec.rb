require 'rails_helper'

RSpec.describe CurriculumAffiliation, type: :model do
  it 'is valid with valid attributes'
  it 'is not valid without a curriculum_id'
  it 'is not valid without a learning_unit_id'
end
