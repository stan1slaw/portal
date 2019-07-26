class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :name
      t.text   :actor
      t.text   :producer
      t.date   :time_create
      t.text   :description
      t.timestamps
    end
  end
end
