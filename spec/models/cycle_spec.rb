# == Schema Information
#
# Table name: cycles
#
#  id                         :bigint           not null, primary key
#  curriculum_id              :integer
#  name                       :string           not null
#  order_number               :integer          not null
#  learning_goals_description :text             not null
#  challenge_description      :text             not null
#  boilerplate_url            :string
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
require 'rails_helper'

RSpec.describe Cycle, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:cycle)).to be_valid
    end
  end

  describe 'validations' do
    it do
      expect do
        FactoryBot.create(:cycle,
                          name: nil)
      end.to raise_error ActiveRecord::NotNullViolation
    end

    it do
      expect do
        FactoryBot.create(:cycle,
                          order_number: nil)
      end.to raise_error ActiveRecord::NotNullViolation
    end

    it do
      expect do
        FactoryBot.create(:cycle,
                          learning_goals_description: nil)
      end.to raise_error ActiveRecord::NotNullViolation
    end

    it do
      expect do
        FactoryBot.create(:cycle,
                          challenge_description: nil)
      end.to raise_error ActiveRecord::NotNullViolation
    end
  end
end
