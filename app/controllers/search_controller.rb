class SearchController < ApplicationController
  def index
    if params.has_key?(:genre)
      @genre = Genre.find(params[:genre]).nom
      @films = Film.where(genre_id: params[:genre])
      @films.inspect
    else
      @genre = "Pas de genre spécifié"
    end
  end

end
