require 'rails_helper'

RSpec.describe Curriculum, type: :model do
  it 'is not valid without a name' do
    curriculum = described_class.new(name: nil)
    expect(curriculum).not_to be_valid
  end

  it 'is valid with a name' do
    curriculum = described_class.new(name: 'Curriculum')
    expect(curriculum).to be_valid
  end
end
