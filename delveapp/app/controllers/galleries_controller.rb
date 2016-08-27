class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show]
  def index
    @galleries = Gallery.all
  end

  def show
    # binding.pry
    @gallery = Gallery.find_by(id: params[:id])
    @paintings = Painting.all
  end

  private

  def set_gallery
    @gallery = Gallery.find(params[:id])
  end

end
