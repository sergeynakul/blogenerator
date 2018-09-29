class StaticPagesController < ApplicationController
  def home
    @blog = Blog.new
  end

  def about
  end
end
