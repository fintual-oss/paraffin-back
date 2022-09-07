# == Schema Information
#
# Table name: resources
#
#  id               :bigint           not null, primary key
#  name             :string
#  url              :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint
#  learning_unit_id :bigint
#
require 'rails_helper'

RSpec.describe Resource, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:resource)).to be_valid
    end
  end
end
