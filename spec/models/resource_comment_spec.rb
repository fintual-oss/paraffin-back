# == Schema Information
#
# Table name: resource_comments
#
#  id          :bigint           not null, primary key
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#  resource_id :bigint
#
require 'rails_helper'

RSpec.describe ResourceComment, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:resource_comment)).to be_valid
    end
  end
end
