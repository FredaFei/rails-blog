class ChangeEmailToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :emial, :email
  end
end
