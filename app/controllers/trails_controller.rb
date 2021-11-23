class TrailsController < ApplicationController
  def index
    @trails = Trail.all
  end

  def show
    @trail = Trail.find(params[:id])
    # @marker = { lat: @watch.latitude, lng: @watch.longitude }
  end

  # private
  # def set_trail
  #   @trail = Trail.find(params[:id])
  #   authorize(@trail)
  # end

  # def trail_params
  #   params.require(:trail).permit(:id, :name, :style, :location, :photos: [])
  # end
end
