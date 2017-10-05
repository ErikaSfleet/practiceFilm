class WelcomeController < ApplicationController
  def index
    @films = Film.all
    @favorites = Favorite.update favorite_param
  end
  private
  def favorite_param
    params.require(:favorite).permit(:favorite)
  end
end
