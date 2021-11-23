class TrailsController < ApplicationController
  def index
    @trails = Trail.all
  end

  def show
    @trail = Trail.find(params[:id])
    # @marker = { lat: @watch.latitude, lng: @watch.longitude }
  end

  # private
  # def set_watch
  #   @watch = Watch.find(params[:id])
  #   authorize(@watch)
  # end

  # def watch_params
  #   params.require(:watch).permit(:id, :name, :style, :location, :price)
  # end
end
