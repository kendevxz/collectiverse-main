class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:comment_id])
    @subcomment = Subcomment.new(subcomment_params)
    @subcomment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path(@post) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "posts/show", status: :unprocessable_entity }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  private

  def subcomment_params
    params.require(:subcomment).permit(:content)
  end
end
