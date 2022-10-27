require 'rails_helper'

RSpec.describe ResourceTag, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:resource_tag)).to be_valid
    end
  end
end
