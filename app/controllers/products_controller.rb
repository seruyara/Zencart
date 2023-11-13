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

  # # GET /categories/:category_id/products
  # def index
  #   category = Category.find(params[:category_id])
  #   products = category.products
  #   render json: products
  # end

  # GET /products/:id
  def show_by_id
    product = Product.find(params[:id])
    render json: product
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Product not found" }, status: :not_found
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

  # GET /products/search
  def search
    if params[:search_query].present? || params[:tags].present? || params[:category].present?
      search_results = Product.where("name LIKE ? OR tags LIKE ? OR description LIKE ? OR category LIKE ?",
        "%#{params[:search_query]}%", #Search keyword in name 
        "%#{params[:tags]}%", # Search tag
        "%#{params[:search_query]}%", # Search keyword in description
        "%#{params[:category]}%")     # Search keyword in category
    else
      search_results = Product.all
    end

    render json: search_results
  end

  # GET /products/filter
  def filter
    filtered_results = Product.all

    if params[:category].present?
      filtered_results = filtered_results.where(category: params[:category])
    end

    if params[:min_price].present?
      filtered_results = filtered_results.where("price >= ?", params[:min_price].to_f)
    end

    if params[:max_price].present?
      filtered_results = filtered_results.where("price <= ?", params[:max_price].to_f)
    end

    if params[:star_rating].present?
      filtered_results = filtered_results.where(star_rating: params[:star_rating].to_i)
    end

    render json: filtered_results
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
     product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Product not found" }, status: :not_found
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :shop_id, :description, :price, :image, :quantity, :category)
    end
end
