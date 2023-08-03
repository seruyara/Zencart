class CategoriesController < ApplicationController
    # GET /categories
    def index
      categories = Category.all
      render json: categories
    end
  
    # GET /categories/:id
    def show
      category = find_category
      render json: category
    end
  
    # POST /categories
    def create
      category = Category.new(category_params)
      if category.save
        render json: category, status: :created
      else
        render json: { errors: category.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # PUT /categories/:id
    def update
      category = find_category
      if category.update(category_params)
        render json: category
      else
        render json: { errors: category.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # DELETE /categories/:id
    def destroy
      category = find_category
      category.destroy
      head :no_content
    end
  
    private
  
    def find_category
      Category.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Category not found" }, status: :not_found
    end
  
    def category_params
      params.require(:category).permit(:name, :description)
    end
  end
  