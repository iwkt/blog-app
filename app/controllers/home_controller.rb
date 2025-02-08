class HomeController < ApplicationController
  def index
    @article = Article.first.title
    @content = Article.first.content
  end

  def about
  end
end