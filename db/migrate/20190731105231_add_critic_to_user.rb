class AddCriticToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :critic, :boolean
  end
end
