class StaticPagesController < ApplicationController
  def home
    @blog = Blog.new
    @posts = Post.all.where(status: true).order('created_at DESC')
  end

  def about
  end
  
  def bestofthebest
    @posts = Post.all.where(status: true).order('views_count DESC').order('created_at DESC').limit(3)
  end
end
