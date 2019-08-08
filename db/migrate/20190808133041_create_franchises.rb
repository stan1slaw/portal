class CreateFranchises < ActiveRecord::Migration[5.2]
  def change
    create_table :franchises do |t|
      t.string :name
      t.text :description
      t.boolean :display_in_navbar, default: true
      t.timestamps
    end
  end
end
