class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :post_by_id, only: %i(show edit update)

  def index
    @posts = Post.newest(10)
    logger.debug DebugHelper.show @posts
  end

  def show
    authorize @post
  end

  def new
    @post = current_user.posts.build
    authorize @post
  end

  def create
    @post = current_user.posts.build(post_params)
    authorize @post
    if @post.save
      redirect_to posts_path, notice: 'new post created'
    else
      render :new
    end
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
    if @post.update(post_params)
      redirect_to posts_path, notice: 'post updated'
    else
      render :edit
    end
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :content)
  end

  def post_by_id
    @post = Post.find params[:id]
  end
end
