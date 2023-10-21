class ArticlesController < ApplicationController
  def create
    article = Article.new(article_params)

    article.save!

    render json: { dep: article }, status: 200
  end

  private

  def article_params
    params.require(:articles).permit(:name)
  end
end