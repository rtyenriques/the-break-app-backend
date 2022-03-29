class Api::V1::CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render json: @categories

    end

    def create
        @category = Category.new(category_params)
        if @category.save
            render json: @category
        else
            render json: {error: 'Error creating category'}

    end

    def show
        @category = Category.find(params[:id])
        render json: @category

    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
    end

    private

    def category_params
        params.require(:category).permit(:name)
        
    end

    def set_category
        @category = Category.find(params[:id])
    end
end
