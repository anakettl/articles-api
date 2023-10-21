class ArticlesController < ApplicationController
  def create
    article = Article.new(article_params)

    article.save!

    render json: { dep: article }, status: 200
  end

  def index
    articles = Article.all

    render json: serializer.new(articles), status: 200
  end

  private

  def article_params
    params.require(:articles).permit(:name)
  end

  def serializer
    ArticleSerializer
  end
end
