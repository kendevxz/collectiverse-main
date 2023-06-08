if @comment.persisted?
  json.form render(partial: "subcomments/form", formats: :html, locals: {post: @post, comment: Comment.new})
  json.inserted_subcomment_item render(partial: "comment/subcomment", formats: :html, locals: {subcomment: @subcomment})
else
  json.form render(partial: "subcomments/form", formats: :html, locals: {comment: @comment, subcomment: @subcomment})
end
