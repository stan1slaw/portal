class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.date :dataroz
      t.text :description

      t.timestamps
    end
  end
end
