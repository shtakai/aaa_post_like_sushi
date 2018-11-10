class PostsController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @post = current_user.posts.build
    authorize @post
  end

  def create
    @post = current_user.posts.build(post_params)
    authorize @post
    if @post.save
      flash[:notice] = 'new post created'
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
