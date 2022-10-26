require 'rails_helper'

RSpec.describe Tag, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:model)).to be_valid
    end
  end
end
