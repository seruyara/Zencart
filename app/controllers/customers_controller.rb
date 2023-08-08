class CustomersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :show, :update, :destroy]

  rescue_from ActiveRecord::RecordInvalid, with: :render_upnrocessable_entity_response

  def index
    customers = Customer.all
    render json: customers
  end

  def show
    customer = Customer.find(params[:id])
    if customer
      render json: customer
    else
      render json: { error: "Customer not found" }, status: :not_found
    end
  end

  def create
    customer = Customer.create!(customer_params)
    if customer.valid?
      render json: customer, status: :created
    else
      render json: { error: "customer not created" }, status: :unprocessable_entity
    end
  end

  def update
    customer = Customer.find(params[:id])
    customer.update!(customer_params)
    render json: customer
  end

  def destroy
    customer = Customer.find(params[:id])
    customer.destroy
    head :no_content
  end

  private

  def customer_params
    params.permit(:name, :email, :password)
  end

  def render_upnrocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end