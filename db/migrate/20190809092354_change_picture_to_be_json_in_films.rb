class ChangePictureToBeJsonInFilms < ActiveRecord::Migration[5.2]
  def change
    change_column :films, :picture, :json, using: 'picture::JSON'
  end
end
