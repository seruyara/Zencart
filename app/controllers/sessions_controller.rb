class SessionsController < ApplicationController
    def create
        #debugger
      customer = Customer.find_by(email: params[:email])
      if customer && customer.authenticate(password: params[:password])
        customer.generate_authentication_token!
        render json: customer, status: :ok
      else
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
      end
    end
    def destroy
       customer = Customer.find_by(authentication_token: request.headers['Authorization'])
       if customer
        customer.reset_authentication_token!
        else
          head :no_content
        end
    end

    def create
      #debugger
    seller = Seller.find_by(email: params[:email])
    if seller && seller.authenticate(password: params[:password])
      seller.generate_authentication_token!
      render json: seller, status: :ok
    else
      render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
  end
  def destroy
     seller = Seller.find_by(authentication_token: request.headers['Authorization'])
     if seller
      seller.reset_authentication_token!
      else
        head :no_content
      end
  end
  end