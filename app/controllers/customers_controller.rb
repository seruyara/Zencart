class CustomersController < ApplicationController

  # GET /customers
  def index
    customer = Customer.all
    render json: customer
  end

  # GET /customers/1
  def show
    customer = set_customer
    render json: customer
  end

  # POST /customers
  def create
    customer = Customer.create!(customer_params)
    if customer
      render json: customer, status: :created
    else render json: {error: 'customer not found'}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customers/1
  def update
    customer = set_customer
    if customer.update!(customer_params)
      render json: customer
    else 
      render json: {error: 'customer not found'}, status: :unprocessable_entity
    end
  end

  # DELETE /customers/1
  def destroy
    customer = set_customer
    if customer
      customer.destroy
      head :no_content
    else 
      render json: {error: 'customer not found'}, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      customer = Customer.find_by(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.permit(:name, :email, :password)
    end
end
