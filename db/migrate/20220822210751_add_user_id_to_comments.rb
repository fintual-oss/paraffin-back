class AddUserIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :resource_comments, :user, foreign_key: true
  end
end
