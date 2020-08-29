class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def create
        @artist = Artist.create(artist_param)
        redirect_to artist_path(@artist)
    end

    def new
        @artist = Artist.new
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_param)
        redirect_to artist_path(@artist)
    end

    def destroy
        @artist = Artist.find(params[:id])
        Artist.destroy(params[:id])
        redirect_to artists_path
    end

    private

    def artist_param
        params.require(:artist).permit(:name,:bio)
    end
end
