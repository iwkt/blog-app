class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def about
  end

  def show
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path(@article), notice: '更新できたぴょん'
    else
      flash.now[:error] = '更新できなかったぴょん'
      render :edit
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
