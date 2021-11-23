class UsersController < ApplicationController
  def index
    @users = User.all
    authorize(@users)
  end

  def show
    @user = User.find(params[:id])
    authorize(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :gender, :location, :running_exp, :bio, :birth_date, :avatar)
  end
end
