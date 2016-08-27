class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]

  def new
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by(id: params[:id])
    @paintings = Painting.all
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end


  private

  def set_artist
    @artist = Artist.find(params[:id])
  end


end
