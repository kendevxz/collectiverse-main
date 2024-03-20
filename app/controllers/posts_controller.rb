class PostsController < ApplicationController
  before_action :set_post, only: %i[index show upvote downvote]

  def upvote
    vote_and_redirect { @post.upvote_by current_user }
  end

  def downvote
    vote_and_redirect { @post.downvote_by current_user }
  end

  def new
    @post = Post.new
  end

  def show
    @comment = Comment.new
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.category_id = params[:post][:category_id].to_i
    save_and_redirect
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

  def save_and_redirect
    if @post.save
      redirect_to post_path(@post)
    else
      render "categories/show", status: :unprocessable_entity
    end
  end
end
