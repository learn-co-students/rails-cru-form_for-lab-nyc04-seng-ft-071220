class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def create
        @genre = Genre.create(genre_param)
        redirect_to genre_path(@genre)
    end

    def new
        @genre = Genre.new
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_param)
        redirect_to genre_path(@genre)
    end

    def destroy
        @genre = Genre.find(params[:id])
        Genre.destroy(params[:id])
        redirect_to genres_path
    end

    private

    def genre_param
        params.require(:genre).permit(:name)
    end
end
