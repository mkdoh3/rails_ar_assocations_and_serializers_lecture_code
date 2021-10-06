class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    render json: @user, status: :ok
  end

  def create
    @user = User.create!(user_params)
    render json: @user, status: :created
  end

  def update
    @user.update!(user_params)
    render json: @user, status: :ok
  end

  def destroy
    @user.destroy
    head :no_content, status: :ok
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username)
    end
end
