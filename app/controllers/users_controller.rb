class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, :notice => "User has been updated!" }
      else
        format.html { redirect_to edit_user_path(@user), :notice => "Sorry, couldn't update user. Try again!" }
      end
    end
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
