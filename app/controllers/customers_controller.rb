class CustomersController < ApplicationController

  skip_before_action :authenticate_customer, only: [:create]
  before_action :find_customer, only: [:show, :update, :destroy]

  # GET /customers
  def index
    @customers = Customer.all
    render json: @customers
  end

  # GET /customers/1
  def show
    render json: @customer
  end

  # POST /customers
  def create
    @customer = Customer.create(customer_params)
    if @customer.save
      render json: @customer
    else
      render json: { errors: @customer.errors.full_messages }, status: 422
    end
  end

  # PATCH/PUT /customers/1
  def update
    unless @customer.update(customer_params)
      render json: { errors: @customer.errors.full_messages }, status: 422
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def customer_params
      params.require(:customer).permit(:name, :email, :password)
    end
    # Only allow a list of trusted parameters through.
    def find_customer
      @customer = Customer.find(params[:id])
    end
end
