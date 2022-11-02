require 'rails_helper'

RSpec.describe Label, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:label)).to be_valid
    end
  end
end
