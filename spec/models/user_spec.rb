require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:user)).to be_valid
    end
  end
end
