# == Schema Information
#
# Table name: resource_evaluations
#
#  id          :bigint           not null, primary key
#  evaluation  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  resource_id :bigint
#  user_id     :bigint
#
require 'rails_helper'

RSpec.describe ResourceEvaluation, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:resource_evaluation)).to be_valid
    end
  end
end
