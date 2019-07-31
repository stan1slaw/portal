class RemoveActorFromFilms < ActiveRecord::Migration[5.2]
  def change
    remove_column :films, :actor, :string
  end
end
