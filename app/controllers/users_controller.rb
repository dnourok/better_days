class UsersController < ApplicationController
  # caches_page :index

	def index
    @user = User.all
	end

	def show
  end

  def edit
  end

  def update
    @user = User.update
  end

  def destroy
  end

end