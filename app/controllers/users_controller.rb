class UsersController < ApplicationController
 before_action :set_user, only: [:show, :edit, :update, :destroy]
  # caches_page :index

	def index
    @user = User.all
	end

  def create
    @user = User.new(user_params)
  end

	def show
    
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.update(user_params)
  end

  def destroy
  end

  private 

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
      params.require(:user).permit(:id, :full_name, :email, :password)
    end

end