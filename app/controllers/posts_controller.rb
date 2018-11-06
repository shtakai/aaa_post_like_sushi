class PostsController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = 'post okay'
      redirect_to posts_path
    else
      render new
    end
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
