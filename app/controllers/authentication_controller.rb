class AuthenticationController < ApplicationController

    skip_before_action :authenticate_customer

    def login
        @customer = Customer.find_by_email(params[:email])
        if @customer&.authenticate(params[:password])
            token = JwtToken.encode(customer_id: @customer.id)
            time = Time.now = 24.hours.to_i
            render json: { token: token,exp: time.strftime("%m-%d-%Y %H:%M"),
                            name: @customer.name }, status: :ok
        else
            render json: { error: "unauthorized" }, status: :unauthorized
        end
    end
end
