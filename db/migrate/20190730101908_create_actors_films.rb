class CreateActorsFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :actors_films do |t|
      t.references :actor, foreign_key: true
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
