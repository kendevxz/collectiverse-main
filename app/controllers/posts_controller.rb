class PostsController < ApplicationController
  before_action :set_params, only: %i[index show destroy]

  def show
    @comment = Comment.new  # To be able to create comment on post show page
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
    @post.user_id = current_user.id
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
