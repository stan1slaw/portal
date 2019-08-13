class ChangeTypeOfFavoritesId < ActiveRecord::Migration[5.2]
  def change
    change_column :albums, :favorites_id , :string, using: 'favorites_id::character varying[]', default: [], array: true
  end
end
