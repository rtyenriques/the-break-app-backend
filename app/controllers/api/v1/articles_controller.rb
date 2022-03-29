class Api::V1::ArticlesController < ApplicationController

    before_action :set_category
    

    def index
        @articles = Article.all
        render json: @articles

    end

    def create
        @category = Category.new(category_params)
        if @category.save
            render json: @category
        else
            render json: {error: 'Error creating category'}

    end

    def show
        @article = Article.find(params[:id])
        render json: @article

    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
    end

    private

    def article_params
        params.require(:article).permit(:title, :category_id, :body, :subtitle, :author, :publish_date, :image)
        
    end

    def set_category
        @category = Category.find(params[:id])
    end
end
