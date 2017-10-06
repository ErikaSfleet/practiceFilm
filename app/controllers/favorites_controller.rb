class FavoritesController < ApplicationController
before_action :find_film, :my_favorites, only: [:index]
#before_action :my_favorites, only: [:index]

  def my_favorites
   @favorites = current_user.films
  end

  def index
    current_user.favorites.build(film_id: @film.id)
    if @film.save
       redirect_to favorites_path, notice: "Tu peli favorita ha sido agregada"
    else
       redirect_to favorites_path, flash[:error] = "oh hu :C"
    end

  end

  def find_film
    @film = Film.find(params[:id])
  end
end
