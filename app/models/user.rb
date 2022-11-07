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
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2 github]

  has_many :resources
  has_many :resource_comments
  has_many :resource_evaluations
  has_many :completed_learning_units
  has_many :user_cycle_states
  has_many :completed_resources

  def self.from_omniauth(access_token)
    where(provider: access_token.provider,
          oauth_id: access_token.oauth_id).first_or_create do |user|
      user.email = access_token.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = access_token.info.name
    end
  end
end
