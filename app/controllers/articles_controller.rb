class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update]

  def index
    @articles = Article.all
  end

  def about
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article), notice: '保存できたぴょん'
    else
      flash.now[:error] = '保存できなかったぴょん'
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article), notice: '更新できたぴょん'
    else
      flash.now[:error] = '更新できなかったぴょん'
      render :edit
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy!
    redirect_to root_path, notice: '削除できたぴょん'
  end

  def set_article
    @article = Article.find(params[:id]) 
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
