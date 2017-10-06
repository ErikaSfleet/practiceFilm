class FavoritesController < ApplicationController
before_action :find_film, :my_favorites, only: [:create]
#before_action :my_favorites, only: [:index]

  def my_favorites
   @favorites = current_user.films
  end

  def create
    favorite = current_user.favorites.new(film_id: @film.id)
    if favorite.save
       redirect_to my_favorites_path, notice: "Tu peli favorita ha sido agregada"
    else
       redirect_to root_path, flash[:error] = "oh hu :C"
    end

  end

  def find_film
    @film = Film.find(params[:id])
  end
end
