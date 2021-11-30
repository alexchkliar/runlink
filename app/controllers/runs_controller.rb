class RunsController < ApplicationController
  def new
    @trail = Trail.find(params[:trail_id])

    @valid_users = []
    User.all.each do |user|
      @valid_users << user unless user.first_name.nil? || user == current_user
    end

    @users = @valid_users.map { |user| [user.name, user.id] }
    @run = Run.new
    @run.run_participants.build
    # @markers = @trail.geocoded.map do |trail|
    #   {
    #     lat: trail.latitude,
    #     lng: trail.longitude
    #   }
    # end
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
    @marker = { lat: @run.trail.latitude, lng: @run.trail.longitude }
  end

  def register_run
    @run_participant = RunParticipant.find_by(user_id: current_user.id, run_id: params[:id])
    @run = Run.find(params[:id])
    @trail = @run.trail

    @valid_users = []
    User.all.each do |user|
      @valid_users << user unless user.first_name.nil? || user == current_user
    end

    @users = @valid_users.map { |user| [user.name, user.id] }
  end

  def post_register_run
    @run = Run.find(params[:id])
    run_participant_current = RunParticipant.find_by(user_id: current_user.id, run_id: params[:id])
    participant = params[:run_participant]
    run_participant_current.distance = participant["distance"].to_f
    run_participant_current.difficulty = participant["difficulty"].to_i
    run_participant_current.completed = participant["completed"] == "1"
    run_participant_current.seconds = (params[:run_participant]["hours"].to_i * 60 * 60) + (params[:run_participant]["minutes"].to_i * 60) + params[:run_participant]["seconds"].to_i
    run_participant_current.save!
    trail_rating = TrailRating.new(user_id: current_user.id, trail_id: participant["trail"].keys[0].to_i, rating: participant["trail"].values[0].to_i)
    trail_rating.save!
    participant["user_ratings"].keys.each do |key|
      user_id = key.to_i
      rating = participant["user_ratings"][key].to_i == 1
      user_rating = UserRating.new
      user_rating.rater_id = current_user.id
      user_rating.ratee_id = user_id
      user_rating.thumbs_up = rating
      user_rating.save!
    end
    redirect_to user_badges_path, notice: 'Run was succesfully saved.'
  end

  private
  def run_params
    params.require(:run).permit(:date, run_participants_attributes: [:id, :user_id])
  end

  def run_participation_params
    params.require(:run_participant).permit(:date, run_participants_attributes: [:id, :user_id])
  end
end
