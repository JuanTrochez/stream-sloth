class Films < ActiveRecord::Migration[5.0]
  def change
    create_table :films
    add_column :films, :titre, :string
    add_column :films, :realisateur, :string
    add_column :films, :date_sortie, :date
    add_column :films, :date_production, :string
    add_column :films, :synopsis, :text
    add_column :films, :pays, :string
    add_column :films, :genres, :string
    add_column :films, :duree, :string
    add_column :films, :image, :string
  end
end
