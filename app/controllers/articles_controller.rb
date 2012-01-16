class ArticlesController < ApplicationController
  
  def news
    @articles = Article.all
  end
  
  def news_item
    @article = Article.find_by_slug(params[:slug]) || Article.find_by_id(params[:slug])
  end
  
  def motoladies
    
  end
  
  def tips
    
  end
  
end
