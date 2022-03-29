class Api::V1::ArticlesController < ApplicationController

    before_action :set_category
    

    def index
        @articles = @category.articles
        render json: @articles

    end

    def show
    #    @articles = @category.article.find_by(id: params[:id])

       @article - Article.find(params[:id])
       render json: @articles

    end

    def create
        @article = @category.articles.new(article_params)
        if @article.save
            render json: @article
        else
            render json: {error: 'Error creating article'}
        end
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
        @category = Category.find(params[:category_id])
    end
end

