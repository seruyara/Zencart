class ShopsController < ApplicationController

  # GET /shops
  def index
    shop = Shop.all
    render json: shop
  end

  # GET /shops/1
  def show
    shop = set_shop
    render json: shop
  end

  # POST /shops
  def create
    shop = Shop.create!(shop_params)
    if shop
      render json: shop, status: :created
    else
      render json: shop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shops/1
  def update
    if shop.update!(shop_params)
      render json: shop
    else
      render json: {errors: 'shop not found'}, status: :unprocessable_entity
    end
  end

  # DELETE /shops/1
  def destroy
    shop = set_shop
    if shop
      shop.destroy
      head :no_content
    else 
      render json: {errors: 'shop not found'}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      shop = Shop.find_by(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shop_params
      params.permit(:name, :seller_id, :description)
    end
end
