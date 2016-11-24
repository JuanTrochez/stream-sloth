class HomeController < ApplicationController
  def index
    @films = Film.all
    @variable = 4
  end
end
