class ProductsController < ApplicationController

  # GET /products
  def index
    product = Product.all
    render json: product
  end

  # GET /products/1
  def show
    product = set_product
    render json: product
  end

  # POST /products
  def create
    product = Product.create!(product_params)
    if product
      render json: product, status: :created
    else
      render json: {error: 'product not found'}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if product.update!(product_params)
      render json: product
    else
      render json: product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    product = set_product
    if product
      product.destroy
      head :no_content
    else 
      render json: {error: 'product not found'}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      product = Product.find_by(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :shop_id, :description, :price, :image, :availability, :category)
    end
end
