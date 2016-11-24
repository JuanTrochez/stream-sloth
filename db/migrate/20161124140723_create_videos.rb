class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :lien
      t.integer :film_id

      t.timestamps
    end
  end
end
