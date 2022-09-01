require 'rails_helper'

RSpec.describe ResourceComment, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:resource_comment)).to be_valid
    end
  end
end
