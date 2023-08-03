class CustomersController < ApplicationController
  before_action :authorize, only: [:show]
  before_action :set_customer, only: [:show, :update, :destroy]

  def create
    customer = Customer.create(customer_params)
    #debugger
    if customer.valid?
      token = customer.generate_authentication_token!
      # debugger
      render json: {'data':customer, 'token':token}, status: :created
    else
      render json: { error: customer.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show

    customer = Customer.find_by(authentication_token: request.headers['Authorization'])

    if customer
      render json: customer
    else
      render json: { error: 'Invalid authentication token' }, status: :unauthorized
    end
  end

  def index
    customers = Customer.all
    render json: customers
  end

  def destroy
    if customer.destroy
      head :no_content
    else
      render json: { error: "Failed to delete customer" }, status: :unprocessable_entity
    end
  end

  private

  def set_customer
    customer = Customer.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Customer not found" }, status: :not_found
  end

  def customer_params
    params.require(:customer).permit(:name, :email, :password, :password_confirmation )
  end

  def authorize
    return render json: { error: 'Unauthorized' }, status: :unauthorized unless request.headers['Authorization']
  end
end
