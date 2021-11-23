class RunsController < ApplicationController
  def new
    @trail = Trail.find(params[:trail_id])
    @users = User.all.map { |user| [user.full_name, user.id] } # exclude current user
    @run = Run.new
    # @run_participant = RunParticipant.new
    @run.run_participants.build
    @run.run_participants.build
    @run.run_participants.build
    #need a form. submit to create method.
  end

  def create
    raise
    @run = Run.new(run_params)
    #set current user as creator

    #trail id comes fom

    # @booking.user = current_user

    # @watch = Watch.find(params[:watch_id])
    # @booking.watch = @watch
    # authorize(@booking)
    # if @booking.save
    #   redirect_to my_bookings_path, notice: 'Booking was successfully created.'
    # else
    #   render :new
    # end
  end

  def my_runs
  end

  def my_run
  end

  private
  def run_params
    params.require(:booking).permit(:date) # check how to tweak strong params with nested attributes
  end
end
