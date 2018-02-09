class ItemsController < ApplicationController

  def create
    @item = Item.new
    @item.user = User.find(params[:user_id])
    @item.assign_attributes(post_params)

    if @item.save
      render json: {data: render_to_string(:partial => 'item', layout: false, locals: {item: @item})}
    else
      render json: { status: 'failed'}, status: 400
    end

  end

  def update
    @item = Item.find(params[:id])

    if @item.update_attributes(post_params)
      render json: {status: 'success'}, status: 200
    else
      render json: {status: 'failed'}, status: 400
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])

    @item.destroy
  end

  private
  def post_params
    params.require(:item).permit(:user, :name)
  end
end
