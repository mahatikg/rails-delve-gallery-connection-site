class PaintingsController < ApplicationController
  before_action :set_painting, only: [:show]

  def new
  end

  def index
    @paintings = Painting.all
  end

  def show
    @painting = Painting.find_by(id: params[:id])
    # @artists = Artist.all
    # @galleries = Gallery.all
    # @museums = Museum.all
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

  def set_painting
    @painting = Painting.find(params[:id])
  end

end
