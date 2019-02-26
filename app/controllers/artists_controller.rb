class ArtistsController < ApplicationController


  def new
    @artist =  Artist.new

    render :new
  end


  def show
    @artist = Artist.find(params[:id])

    render :show
  end

  def create
    @artist = Artist.new(post_params(:name, :bio))
    # @artist.name = params[:artist][:name]
    # @artist.bio = params[:artist][:bio]
    @artist.save

    redirect_to artist_path(@artist)

  end

  def edit
    @artist = Artist.find(params[:id])

    render :edit
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(post_params(:name, :bio))

    redirect_to artist_path(@artist)
  end

  private

	def post_params(*args)
	  params.require(:artist).permit(*args)
	end




end
