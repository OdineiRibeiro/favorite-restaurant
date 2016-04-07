module ApplicationHelper
  def formated_value(number)
    number_to_currency number,
    unit: "R$ ",
    separator: ",",
    delimiter: "."
  end

  def comments(commentable)
    render partial: "comments/comments", locals: { comments: commentable.comments }
  end

  def new_comment(commentable)
    render partial: "comments/new_comment", locals: { commentable: commentable }
  end
end
