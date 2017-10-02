class FilmsController < ApplicationController
  before_action :find_film, only: [:edit, :update, :destroy, :show]


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
      params.require(:film).permit(:title,:year,:rating,:description)
    end

    def find_film
      @film = Film.find(params[:id])
    end

end
