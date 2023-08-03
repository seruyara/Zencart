class OrdersController < ApplicationController

  # GET /orders
  def index
    order = Order.all
    render json: order
  end

  # GET /orders/1
  def show
    order = set_order
    render json: order
  end

  # POST /orders
  def create
    order = Order.create!(order_params)
    if order
      render json: order, status: :created
    else
      render json: order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orders/1
  def update
    if order.update!(order_params)
      render json: order
    else
      render json: {errors: 'order not found'}, status: :unprocessable_entity
    end
  end

  # DELETE /orders/1
  def destroy
    order = set_order
    if order
      order.destroy
      head :no_content
    else
      render json: {errors: 'order not found'}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.permit(:customer_id, :quantity, :total_price, :status, :payment_method, :shipping_adress, :date)
    end
end
