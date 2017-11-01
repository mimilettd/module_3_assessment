class Api::V1::ItemsController < Api::V1::ApplicationController
  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    render json: {
      message: "Successfully deleted #{item.name}"
    }
  end
end
