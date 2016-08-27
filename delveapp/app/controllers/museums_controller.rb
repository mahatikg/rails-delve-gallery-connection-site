class MuseumsController < ApplicationController

  def index
    @museums = Museum.all
  end

  def show

  end
end
