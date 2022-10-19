# == Schema Information
#
# Table name: cycles
#
#  id              :bigint           not null, primary key
#  curriculum_id   :integer
#  name            :string
#  learning_goals  :text
#  challenge       :text
#  boilerplate_url :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe Cycle, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
