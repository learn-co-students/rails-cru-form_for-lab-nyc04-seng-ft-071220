class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def create
        @song = Song.create(song_param)
        redirect_to song_path(@song)
    end

    def new
        @song = Song.new
    end

    def show
        @song = Song.find(params[:id])
    end

    def edit
        @song = Song.find(params[:id])
        @artists= Artist.all
        @genres = Genre.all
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_param)
        redirect_to song_path(@song)
    end

    def destroy
        @song = Song.find(params[:id])
        Song.destroy(params[:id])
        redirect_to songs_path
    end

    private

    def song_param
        params.require(:song).permit(:name)
    end
end
