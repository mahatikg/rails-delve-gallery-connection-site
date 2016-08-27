class PaintingsController < ApplicationController
  before_action :set_painting, only: [:show, :new, :create, :edit, :update, :destroy]

  def new
    @painting = Painting.new
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
    @painting = Painting.create(painting_params)
    redirect_to painting_path(@painting)
  end

  def edit
    @painting = Painting.find_by(id: params[:id])
    @painting.update(painting_params)
    redirect_to painting_path(@painting)
  end

  def update
  end

  def delete
  end

  private

  def set_painting
    @painting = Painting.find_by(id: params[:id])
  end

  def painting_params
    #binding.pry
    params.require(:paintings).permit(:title, :date, :movement, :artist_id)
  end

end
