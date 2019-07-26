class AddPictureToFilms < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :picture, :string
  end
end
