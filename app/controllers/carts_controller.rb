class CartsController < ApplicationController

  # GET /carts
  def index
    cart = Cart.all
    render json: cart
  end

  # GET /carts/1
  def show
    cart = set_cart
    render json: cart
  end

  # POST /carts
  def create
    cart = Cart.create!(cart_params)
    render json: cart, status: :created
  end

  # PATCH/PUT /carts/1
  def update
    cart = set_cart
    if cart.update!(cart_params)
      render json: cart
    else
      render json: {error: 'cart not found'}, status: :not_found
    end
  end

  # DELETE /carts/1
  def destroy
    cart = set_cart
    if cart
      cart.destroy
    else 
      render json: {error: 'cart not found'}, status: :not_found
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      cart = Cart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.permit(:customer_id, :status)
    end
end
