# frozen_string_literal: true

class AddIndexToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:users, :email, true)
  end

  add_index :users, :email,                unique: true
  add_index :users, :reset_password_token, unique: true
end
