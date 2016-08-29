class PaintingsController < ApplicationController
  #before_action :set_painting, only: [:show, :new, :create, :edit, :update, :destroy]

  def new
    @painting = Painting.new
  end

  def index
    @paintings = Painting.all
  end

  def show
    @painting = Painting.find_by(id: params[:id])
  end

  def create
    @painting = Painting.create(painting_params)
    redirect_to painting_path(@painting)
  end

  def edit
    @painting = Painting.find_by(id: params[:id])
    #for our view we had to change from collection_check_boxes
    #to collection_radio_buttons simply to avoid a undefined method to_i error
    #unsure why this internal method within the collection_check_boxes is causing errors
  end

  def update
    @painting = Painting.find_by(id: params[:id])
    @painting.update(painting_params)
    #we have to use to_i on the gallery and artist because we are pretty sure
    #radio_buttons converts everything to a string and it wasn't updating id numbers
    #that were strings. this makes sense since we got a to_i error with check_boxes prior

    redirect_to painting_path(@painting)
  end

  def destroy
    @painting = Painting.find_by(id: params[:id])
    @gallery = @painting.gallery
    @painting.destroy
    redirect_to gallery_path(@gallery)
  end

  private

  def set_painting
    @painting = Painting.find_by(id: params[:id])
  end

   def painting_params
    #  complicated = {title: params[:painting][:title],
    #  date: params[:painting][:date],
    #  movement: params[:painting][:movement],
    #  artist_id: params[:painting][:artist].to_i,
    #  gallery_id: params[:painting][:gallery].to_i,
    #  painting_image: params[:painting][:painting_image]
    # }
    params.require(:painting).permit(:artist_id, :gallery_id, :title, :date, :movement, :painting_image)
   end

end
