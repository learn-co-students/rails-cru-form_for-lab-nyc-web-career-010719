class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def index
    @songs = Song.all
  end

  def show
    @song = set_song
    # binding.pry
    # @genre = Genre.find(@song.genre_id)
    # @artist = Artist.find(@song.artist_id)
  end

  def create
    @song = Song.create(song_params(:name,:artist_id))
    # @artist = Artist.create(song_params[:artist])
    # @genre = Genre.create(song_params[:genre])
    # @song = Song.create(song_params(:name,@artist.id,@genre.id))
    # binding.pry
    redirect_to song_path(@song)

  end

  def update
    @song = set_song
    @song.update(song_params(:name,:artist_id,:genre_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = set_song
  end

  def delete
  end
private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params(*args)
    params.require(:song).permit(*args)
  end
  # def get_genre
  #   @song = set_song
  #   @genre = Genre.find(@song.genre_id)
  #   @artist = Artist.find(@song.artist_id)
  # end
end
