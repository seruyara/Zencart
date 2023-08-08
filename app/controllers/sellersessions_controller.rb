class SellersessionsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    seller = Seller.find_by(email: params[:email])
    if seller && seller.authenticate(params[:password])
      token = encode_token({ seller_id: seller.id })
      render json: { loggedin: true, seller: seller, jwt: token }, status: :accepted
    else
      render json: { error: "Invalid email or password" }, status: :unauthorized
    end
  end

  # clear JWT token from client's storage
  def destroy
    cookies.delete(:jwt_token)
    render json: { message: "Logged out successfully" }
  end

  private

  def session_params
    params.permit(:email, :password)
  end
end