class AddOauthIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :oauth_id, :string
  end
end
