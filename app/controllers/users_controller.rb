class UsersController < ApplicationController
  def index
    @users = User.all
    # authorize(@users)
  end

  def show
    @user = User.find(params[:id])
    authorize(@user)
  end

  def user_params
    params.require(:user).permit(:id)
  end
end
