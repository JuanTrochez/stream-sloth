class Videos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos
    add_column :videos, :lien, :string
    add_column :videos, :film_id, :int
  end
end
