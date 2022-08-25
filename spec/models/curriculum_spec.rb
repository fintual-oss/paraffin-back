require 'rails_helper'

RSpec.describe Curriculum, type: :model do
  it 'is not valid without a name' do
    curriculum = Curriculum.new(name: nil)
    expect(curriculum).to_not be_valid
  end
  it 'is valid with a name' do
    curriculum = Curriculum.new(name: 'Curriculum')
    expect(curriculum).to be_valid
  end
end
