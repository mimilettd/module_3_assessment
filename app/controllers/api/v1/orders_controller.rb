class Api::V1::OrdersController < Api::V1::ApplicationController
  def index
    render json: Order.all
  end

  def show
    render json: Order.find(params[:id])
  end
end

