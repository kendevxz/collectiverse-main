class SubcommentsController < ApplicationController

  def create
    @comment = Comment.find(params[:comment_id])
    @subcomment = Subcomment.new(subcomment_params)
    @subcomment.comment = @comment
    @subcomment.user = current_user

    @post = @comment.post # fetch post of the commment we're replying to
    # @comment = Comment.new # new comment instance, needed for rendering the form to create a new comment

    respond_to do |format|
      if @subcomment.save
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
