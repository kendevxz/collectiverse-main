class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.new(comment_params)

    redirect_to @post if @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :parent_id).merge(post_id: params[:post_id])
  end
end
