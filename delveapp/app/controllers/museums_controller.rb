class MuseumsController < ApplicationController
  #before_action :set_museum, only: [:show]

  def index
    @museums = Museum.all
  end

  def show
    @museum = Museum.find_by(id: params[:id])
    @galleries = Gallery.all
  end

  private

  def set_museum
    @museum = Museum.find(params[:id])
  end

end
