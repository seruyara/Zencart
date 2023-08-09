# app/controllers/application_controller.rb

class ApplicationController < ActionController::API

    # Use Puma as the app server
    # before_action :authorized
     # this will run the authorized method before every single request we make to our API
    #3 - we are going to create a method called encode_token that will take in a payload and encode it using the JWT.encode method
  
    def encode_token(payload)
      # should store secret in env variable
      JWT.encode(payload, "my_s3cr3t")
    end
  
    #4 - we are going to create a method called auth_header that will check the headers of the request and return the authorization header
  
    def auth_header
      # { Authorization: 'Bearer <token>' }
      request.headers["Authorization"] # this is the token we are sending from the front
    end
  
    #5 - we are going to create a method called decoded_token that will check if the auth_header exists and if it does it will split the token and decode it using the JWT.decode method
  
    def decoded_token
      if auth_header
        token = auth_header.split(" ")[1]
        # header: { 'Authorization': 'Bearer <token>' }
        begin
          JWT.decode(token, "my_s3cr3t", true, algorithm: "HS256") # this is the token we are sending from the front
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    #8 - we are going to create a method called logged_in? that will check if the current_user or current_admin exists and return true or false
  
    def current_customer
      if decoded_token
        customer_id = decoded_token[0]["customer_id"]
        @customer = Customer.find_by(id: customer_id)
      end
    end
  
    def current_seller
      if decoded_token
        seller_id = decoded_token[0]["seller_id"]
        @seller = Seller.find_by(id: seller_id)
      end
    end
  
    def logged_in?
      !!current_customer || !!current_seller
    end
  
    # def authorized
    #   render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
    # end
  
    def authorized_customer
      render json: { message: "You are not authorized to perform this action as a user" }, status: :unauthorized unless logged_in? && !!current_user
    end
  
    def authorized_seller
      render json: { message: "You are not authorized to perform this action as an admin" }, status: :unauthorized unless logged_in? && !!current_admin
    end
  end