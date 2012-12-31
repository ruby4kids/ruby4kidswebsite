class PostsController < ApplicationController
  
  def index
    post = WebPage.last
    redirect_to post_path(post)
  end
  
  def show
    @post = WebPage.find(params[:id])
  end
  
  
end
