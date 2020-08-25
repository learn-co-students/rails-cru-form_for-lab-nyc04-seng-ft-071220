class SongsController < ApplicationController
    
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def new
        @song = Song.new
        render :form
    end

    def create
        @song = Song.create(strong_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
        render :form
    end

    def update
        @song = Song.find(params[:id])
        @song.update(strong_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    private

    def strong_params(*args)
        params.require(:song).permit(*args)
    end

end