class FavoritesController < ApplicationController

  def my_favorites
   @favorites = current_user.films
  end

  def add_film
    @film= Film.find(params[:id])
    current_user.favorites.build(film_id: @film.id)

    if @film.save
       redirect_to my_favorites_path, notice: "Tu peli favorita ha sido agregada"
    else
       redirect_to my_favorites_path, flash[:error] = "oh hu :C"
    end
  end

end
