class VariationsController < ApplicationController
    # GET /variations
    def index
      variations = Variation.all
      render json: variations
    end
  
    # GET /variations/:id
    def show
      variation = find_variation
      render json: variation
    end
  
    # POST /variations
    def create
      variation = Variation.new(variation_params)
      if variation.save
        render json: variation, status: :created
      else
        render json: { errors: variation.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # PUT /variations/:id
    def update
      variation = find_variation
      if variation.update(variation_params)
        render json: variation
      else
        render json: { errors: variation.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # DELETE /variations/:id
    def destroy
      variation = find_variation
      variation.destroy
      head :no_content
    end
  
    private
  
    def find_variation
      Variation.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Variation not found" }, status: :not_found
    end
  
    def variation_params
      params.require(:variation).permit(:name, :price, :description)
    end
  end
  