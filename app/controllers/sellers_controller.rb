class SellersController < ApplicationController
  before_action :authorize, only: [:show]

  def create
    seller = Seller.create(seller_params)
    #debugger
    if seller.valid?
      token = seller.generate_authentication_token!
      # debugger
      render json: {'data':seller, 'token':token}, status: :created
    else
      render json: { error: seller.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show

    seller = Seller.find_by(authentication_token: request.headers['Authorization'])

    if seller
      render json: sellerer
    else
      render json: { error: 'Invalid authentication token' }, status: :unauthorized
    end
  end

  def index
    sellers = Seller.all
    render json: sellers
  end

  def destroy
    if set_seller.destroy
      head :no_content
    else
      render json: { error: "Failed to delete seller" }, status: :unprocessable_entity
    end
  end
  private

  def set_seller
    seller = Seller.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Seller not found" }, status: :not_found
  end

  def seller_params
    params.require(:seller).permit(:name, :email, :password, :password_confirmation)
  end

  def authorize
    return render json: { error: 'Unauthorized' }, status: :unauthorized unless request.headers['Authorization']
  end
end
