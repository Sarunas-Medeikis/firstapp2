class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share a common setup
    def set_user
      @user = User.find(params[:id])
    end

    # Permit only specific parameters
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
