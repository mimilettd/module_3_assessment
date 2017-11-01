class Api::V1::ItemsController < Api::V1::ApplicationController
  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    item = Item.new(item_params)
    if item.save
      render status: 201, json: Item.find(item.id)
    else
      render json: {
        message: "Failed to create item."
      }
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    render :json => {:error => "not-found"}.to_json, :status => 404
  end

  private
    def item_params
      params.permit(:name, :description, :image_url)
    end
end
