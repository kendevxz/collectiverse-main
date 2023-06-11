class PostsController < ApplicationController
  before_action :set_params, only: %i[index show destroy]

  def upvote
    @post = Post.find(params[:id])
    if current_user.voted_for? @post
      redirect_to posts_path
    else
      @post.upvote_by current_user
      @post.user.increase_karma
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

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @category = Category.find(params[:id])
    @post.category_id = @category
    @post.user_id = current_user
    if @post.save
      redirect_to post_path(@post)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, status: :see_other  # adjust later
  end

  private

  def set_params
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :category_id, photos: [])
  end
end
