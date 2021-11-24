class RunsController < ApplicationController
  def new
    @trail = Trail.find(params[:trail_id])
    @users = User.all.excluding(current_user).map { |user| [user.name, user.id] }
    @run = Run.new
    1.times do
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
      redirect_to my_run_path(@run), notice: 'Run session was successfully created.'
    else
      render :new
    end
  end

  def my_runs
    @runs = Run.all
  end

  def my_run
    @run = Run.find(params[:id])
    @organizer = @run.run_participants.find_by(creator: true).user
    @participant_users = []
    @run.run_participants.each do |run_participant|
      @participant_users << run_participant.user
    end
  end

  private
  def run_params
    params.require(:run).permit(:date, run_participants_attributes: [:id, :user_id])
  end
end
