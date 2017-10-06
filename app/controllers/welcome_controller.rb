class WelcomeController < ApplicationController
  #before_action :init_favorite, only: [:index]

  def index
    @films = Film.all
    #@favorites = Favorite.update favorite_param
  end

  #alomejor no
  #private
  #def favorite_param
  #  params.require(:favorite).permit(:favorite)
  #end

  #alomejor no
  #def init_favorite
  #  @favoriteTrueFalse = [["1","True"],["2","False"]]
  #end







end
