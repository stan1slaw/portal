class AddAvtorToActors < ActiveRecord::Migration[5.2]
  def change
    add_column :actors, :avtor, :string
  end
end
