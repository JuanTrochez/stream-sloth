json.extract! film, :id, :titre, :realisateur, :date_sortie, :date_production, :synopsis, :pays, :genres, :duree, :image, :created_at, :updated_at
json.url film_url(film, format: :json)