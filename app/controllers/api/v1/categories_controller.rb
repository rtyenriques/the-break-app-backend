class Api::V1::CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render json: @categories

    end

    def create
        # binding.pry
        @category = Category.new(category_params)
        if @category.save
            render json: @category
        else
            render json: {error: 'Error creating category'}
        end

    end

    def show
        @category = Category.find(params[:id])
        render json: @category

    end

    def update
        
        @category = Category.find(params[:id])
        @category.update(name: params["category"]["name"])
        @category.save
        render json: @category
    end

    def destroy
        @categories = Category.all
        @category = Category.find(params[:id])
        @category.destroy
        render json: @categories
    end

    private

    def category_params
        params.require(:category).permit(:name)
        
    end

    def set_category
        @category = Category.find(params[:id])
    end
end
