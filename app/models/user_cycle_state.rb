class UserCycleState < ApplicationRecord
  belongs_to :cycle
  belongs_to :user
  belongs_to :reviewer, class_name: 'User', optional: true
end
