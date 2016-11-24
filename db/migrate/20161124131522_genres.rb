class Genres < ActiveRecord::Migration[5.0]
  def change
    create_table :genres
    add_column :genres, :nom, :string
  end
end
