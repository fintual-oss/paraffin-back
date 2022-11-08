# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  name                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when creating an object with the factory' do
    it do
      expect(build(:user)).to be_valid
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
