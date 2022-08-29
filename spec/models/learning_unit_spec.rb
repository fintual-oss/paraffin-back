require 'rails_helper'

RSpec.describe LearningUnit, type: :model do
  it 'is not valid without a name' do
    learning_unit = LearningUnit.new(name: nil)
    expect(learning_unit).to_not be_valid
  end
  it 'is valid with a name' do
    learning_unit = LearningUnit.new(name: 'Ruby on rails')
    expect(learning_unit).to be_valid
  end
end
