require 'rails_helper'

RSpec.describe ResourceLabel, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:resource_label)).to be_valid
    end
  end
end
