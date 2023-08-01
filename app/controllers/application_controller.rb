# app/controllers/application_controller.rb

class ApplicationController < ActionController::API
    include JwtToken
  
    before_action :authenticate_customer
  
    private
  
    def authenticate_customer
      header = request.headers['Authorization']
      if header && header.start_with?('Bearer ')
        token = header.split(' ').last
  
        begin
          @decoded = JwtToken.decode(token)
          @current_customer = Customer.find(@decoded[:customer_id])
        rescue ActiveRecord::RecordNotFound => e
          render json: { errors: e.message }, status: :unauthorized
        rescue JWT::DecodeError => e
          render json: { errors: e.message }, status: :unauthorized
        end
      else
        render json: { errors: 'Authorization header missing or invalid' }, status: :unauthorized
      end
    end
  end
  