class UsersController < ApplicationController
  before_action :set_user, only: %i[show complete_profile update_profile]

  def index
    @users = User.all
    all_user_ids = @users.map { |user| user.id }
    @distances = RunParticipant.all.map { |run| [run.distance, run.user_id] }
    authorize(@users)

    @badges = Badge.all
  end

  def show
  end

  def complete_profile
  end

  def update_profile
    if @user.update(user_params)
      redirect_to users_path, notice: 'User profile was successfully updated.'
    else
      render :complete_profile
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize(@user)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :location, :running_exp, :bio, :birth_date, :avatar)
  end
end
