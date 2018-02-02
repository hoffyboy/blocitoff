class ItemsController < ApplicationController

  def create
    @item = Item.new
    @item.user = User.find(params[:user_id])
    @item.assign_attributes(post_params)

    respond_to do |format|
      if @item.save
        # redirect_to user_path(params[:user_id])
        format.js { render layout: false }
        format.json {render json: @item}
      else
        flash.now[:alert] = "There was an error saving the item. Please try again."
        # redirect_back
      end
    end
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(post_params)
      render json: {status: 'ok'}, status: 200
    else
      render json: {status: 'failed'}, status: 400
    end
  end

  private
  def post_params
    params.require(:item).permit(:user, :name)
  end
end
