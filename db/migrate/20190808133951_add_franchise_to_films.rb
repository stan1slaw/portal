class AddFranchiseToFilms < ActiveRecord::Migration[5.2]
  def change
    add_reference :films, :franchise, foreign_key: true
  end
end
