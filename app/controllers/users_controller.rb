class UsersController < ApplicationController
  before_action :destroy_expired_items

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


end
