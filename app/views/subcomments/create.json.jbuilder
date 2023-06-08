if @subcomment.persisted?
  json.form render(partial: "subcomments/form", formats: :html, locals: {comment: @comment, subcomment: Subcomment.new})
  json.inserted_item render(partial: "posts/subcomment", formats: :html, locals: {subcomment: @subcomment})
else
  json.form render(partial: "subcomments/form", formats: :html, locals: { comment: @comment, subcomment: @subcomment })
end
