class PostsController < ApplicationController
  before_action :set_params, only: %i[index show]

  def upvote
    @post = Post.find(params[:id])
    if current_user.voted_for? @post
      redirect_to posts_path
    else
      @post.upvote_by current_user
      @post.user.increase_karma
      @post.increase_karma
      redirect_to posts_path
    end
  end

  def downvote
    @post = Post.find(params[:id])
    if current_user.voted_for? @post
      redirect_to posts_path
    else
      @post.downvote_by current_user
      @post.user.decrease_karma
      @post.decrease_karma
      redirect_to root_path
    end
  end

  def show
    @comment = Comment.new  # To be able to create comment on post show page
    @subcomment = Subcomment.new
  end

  def index
    @posts = Post.all
    if params[:query].present?
      @posts = @posts.where(title: params[:query])
    end
  end

  # def create
  #   @post = Post.new(post_params)
  #   @post.user_id = current_user.id
  #   category = Category.find(params[:category_id])
  #   raise
  #   @post.category_id = category.id

  #   if @post.save
  #     redirect_to post_path(@post)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  def create
    @category = Category.find(params[:post][:category_id].to_i)
    @post = Post.new(post_params)
    @post.category_id = @category.id
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post)
    else
      render "categories/show", status: :unprocessable_entity
    end
  end

  private

  def set_params
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, photos: [])
  end
end
