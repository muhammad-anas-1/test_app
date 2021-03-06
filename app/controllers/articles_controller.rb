class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def new

    @article = Article.new

  end
  def edit
    @article= Article.find(params[:id])
  end
  def update
    @article= Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article)
  end
  def create
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end
  def show
    @article= Article.find(params[:id])
  end

  private

  def article_params

    params.require(:article).permit(:title, :description)

  end


end
