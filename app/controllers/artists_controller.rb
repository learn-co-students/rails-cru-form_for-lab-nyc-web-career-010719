class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end


  def index
    @artists = Artist.all
  end

  def show
    @artist = set_artist

  end

  def create
    @artist = Artist.create(artist_params(:name,:bio))
    redirect_to artist_path(@artist)
  end

  def update
    @song = set_artist
    @song.update(artist_params(:name,:bio))
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = set_artist
  end

  def delete
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
