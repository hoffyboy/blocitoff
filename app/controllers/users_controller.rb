class UsersController < ApplicationController
  before_action :check_for_expired_todos

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


end
