class MuseumsController < ApplicationController

  #before_action :set_museum, only: [:show]

  def index
    @museums = Museum.all
  end

  def show
    #binding.pry
    @museum = Museum.find(params[:id])
  end

  private
    # def set_museum
    #   @attraction = Attraction.find(params[:id])
    # end

    def museum_params
      params.require(:museum).permit(:name, :city)
    end
#   params
# => <ActionController::Parameters {"controller"=>"museums", "action"=>"show", "format"=>"2"} permitted: fals
end
