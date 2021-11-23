class RunsController < ApplicationController
  def new
    @trail = Trail.find(params[:trail_id])
    @users = User.all.map { |user| [user.name, user.id] }
    @run = Run.new
    3.times do
      @run.run_participants.build
    end
  end

  def create
    @run = Run.new(run_params)
    @trail = Trail.find(params[:trail_id])
    @run.trail = @trail

    if @run.save
      @creator = RunParticipant.new
      @creator.run = @run
      @creator.user = current_user
      @creator.creator = true
      @creator.save
      raise
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
    # params.require(:booking).permit(:date) # check how to tweak strong params with nested attributes
    # params.require(:measurement).permit(:name, :groundtruth => [:type, :coordinates => []])
    params.require(:run).permit(:date, run_participants_attributes: [:id, :user_id])
  end
end
