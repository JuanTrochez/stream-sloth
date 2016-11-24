class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :titre
      t.string :realisateur
      t.date :date_sortie
      t.date :date_production
      t.text :synopsis
      t.string :pays
      t.string :genres
      t.string :duree
      t.string :image

      t.timestamps
    end
  end
end
