class CustomersessionsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    customer = Customer.find_by(email: params[:email])
    if customer && customer.authenticate(params[:password])
      token = encode_token({ customer_id: customer.id })
      render json: { loggedin: true, customer: customer, jwt: token }, status: :accepted
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