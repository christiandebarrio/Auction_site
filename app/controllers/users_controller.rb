class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = 'Add usersuccessfully'
      redirect_to action: 'show', id: @user.id
    else
      flash[:alert] = 'Sorry, something went wrong:'
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
