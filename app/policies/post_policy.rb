class PostPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def user_is_post_user
    post.user == user
  end

  def pass_true
    true
  end

  alias_method :create?, :user_is_post_user
  alias_method :new?, :user_is_post_user
  alias_method :show? , :pass_true
  alias_method :edit?, :user_is_post_user
  alias_method :update?, :user_is_post_user
  alias_method :destroy?, :user_is_post_user
end