class FilmsController < ApplicationController
  before_action :find_film, only: [:edit, :update, :destroy, :show]
  before_action :init_rating, only: [:new, :edit]
    def index
      @films = Film.all
    end
    def new
      @film = Film.new
    end

    def create
      @film = Film.new films_params
      if @film.save
        p "se ha creado"
        redirect_to films_path
      else
        render :new
        p "no se creo"
      end
    end

    def edit
    end

    def update
      if @film.update films_params
        p "se ha actualizado"
        redirect_to films_path
      else
        render :edit
        p "no se ha actualizado"
      end
    end

    def destroy
      @film.destroy
      redirect_to films_path
    end

    def show
    end

    private
    def films_params
      params.require(:film).permit(:title,:rating,:description, :cover, :year)
    end

    def find_film
      @film = Film.find(params[:id])
    end

    def init_rating
      @ratingSelect = [["uno","1"],["dos","2"],["tres", "3"],["cuatro","4"],["cinco","5"]]
    end

end
