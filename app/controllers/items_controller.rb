class ItemsController < ApplicationController

  def create
    @item = Item.new
    @item.user = User.find(params[:user_id])
    @item.assign_attributes(post_params)

    respond_to do |format|
      if @item.save
        format.html #{redirect_to user_path(params[:user_id])}
        render json: {item: @item}
      else
        format.html {flash.now[:alert] = "There was an error saving the item. Please try again."}
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

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])

    # respond_to do |format|
      if @item.destroy
        flash.now[:alert] = "destroyed"
      else
        flash.now[:alert] = "There was an error deleting the item."
      end
    # end
  end

  private
  def post_params
    params.require(:item).permit(:user, :name)
  end
end
