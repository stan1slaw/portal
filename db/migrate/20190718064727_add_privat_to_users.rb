class AddPrivatToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :privat, :boolean, default: false
  end
end
