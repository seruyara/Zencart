class CartItemsController < ApplicationController

  # GET /cart_items
  def index
    cart_item = CartItem.all
    render json: cart_item
  end

  # GET /cart_items/1
  def show
    cart_item = set_cart_item
    render json: cart_item
  end

  # POST /cart_items
  def create
    cart_item = CartItem.create!(cart_item_params)
    render json: cart_item, status: :created
  end

  # PATCH/PUT /cart_items/1
  def update
    if cart_item.update!(cart_item_params)
      render json: cart_item
    else
      render json: { error: 'item not found' }, status: :not_found
    end
  end

  # DELETE /cart_items/1
  def destroy
    cart_item = set_cart_item
    if cart_item
      cart_item.destroy
      head :no_content
    else
      render json: { error: 'item not found' }, status: :not_found
    end
  end

  private

  def set_cart_item
      cart_item = CartItem.find_by(params[:id])
    end

    def cart_item_params
      params.permit(:cart_id, :product_id, :quantity)
    end
end
