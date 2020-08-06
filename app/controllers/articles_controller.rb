class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  def edit #get action for the update form to user 
    @article = Article.find(params[:id])
  end 

  def update #what sends the 'patch' the to db 
  @article = Article.find(params[:id])
  @article.update(title: params[:article][:title], description: params[:article][:description])
  redirect_to article_path(@article)

  end 



end
