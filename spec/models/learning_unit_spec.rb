require 'rails_helper'

RSpec.describe LearningUnit, type: :model do
  it 'is not valid without a name' do
    invalid_learning_unit = described_class.new(name: nil)
    expect(invalid_learning_unit).to_not be_valid
  end
  it 'is valid with a name' do
    example_learning_unit = described_class.new(name: 'Ruby on rails')
    expect(example_learning_unit).to be_valid
  end
end
