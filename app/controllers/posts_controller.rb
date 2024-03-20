class PostsController < ApplicationController
  before_action :set_post, only: %i[index show upvote downvote]

  def upvote
    vote_and_redirect { @post.upvote_by current_user }
  end

  def downvote
    vote_and_redirect { @post.upvote_by current_user }
  end

  def new
    @post = Post.new
  end

  def show
    @comment = Comment.new
  end

  def create
    @category = Category.find(params[:post][:category_id])
    @post = current_user.posts.build(post_params.merge(category_id: @category.id))

    if @post.save
      redirect_to post_path(@post), notice: 'Post was successfully created.'
    else
      render 'categories/show', status: :unprocessable_entity
    end
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, images: [])
  end

  def vote_and_redirect
    if current_user.voted_for?(@post)
      redirect_to posts_path
    else
      yield
      @post.user.send(params[:action] == 'upvote' ? :increase_karma : :decrease_karma)
      redirect_to posts_path
    end
  end
end
