class GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def index
    @genres = Genres.all
  end

  def show
    @genre = set_genre
  end

  def create
    @genre = Genre.create(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def update
    @genre = set_genre
    # binding.pry
    @genre.update(genre_params(:name))
    redirect_to genre_path(@path)
  end

  def edit
    # binding.pry
    @genre = set_genre
  end


  def set_genre
    # binding.pry
    @genre = Genre.find(params[:id])

  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end
