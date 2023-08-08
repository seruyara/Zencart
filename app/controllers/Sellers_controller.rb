class SellersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :show, :update, :destroy]

  rescue_from ActiveRecord::RecordInvalid, with: :render_upnrocessable_entity_response

  def index
    sellers = Seller.all
    render json: sellers
  end

  def show
    seller = Seller.find(params[:id])
    if seller
      render json: seller
    else
      render json: { error: "Seller not found" }, status: :not_found
    end
  end

  def create
    seller = Seller.create!(seller_params)
    if seller.valid?
      render json: seller, status: :created
    else
      render json: { error: "Seller not created" }, status: :unprocessable_entity
    end
  end

  def update
    seller = Seller.find(params[:id])
    seller.update!(seller_params)
    render json: seller
  end

  def destroy
    seller = Seller.find(params[:id])
    seller.destroy
    head :no_content
  end

  private

  def seller_params
    params.permit(:name, :email, :password)
  end

  def render_upnrocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end