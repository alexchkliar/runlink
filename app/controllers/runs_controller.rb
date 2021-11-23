class RunsController < ApplicationController
  def new
    @trail = Trail.find(params[:trail_id])
    @users = User.all
  end

  def create
    @run = Run.new(run_params)
    # @booking.user = current_user

    @watch = Watch.find(params[:watch_id])
    @booking.watch = @watch
    authorize(@booking)
    if @booking.save
      redirect_to my_bookings_path, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def my_runs
  end

  def my_run
  end

  private
  def run_params
    params.require(:booking).permit(:trail_id, :status, :start)
  end
end
