class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]

  def new
    @artist = Artist.new
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by(id: params[:id])
    @paintings = Painting.all
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find_by(id: params[:id])
  end

  def update
    @artist = Artist.find_by(id: params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  def delete
  end


  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def painting_params
    params.require(:painting).permit(:title, :date, :movement, :artist_id)
  end

end
