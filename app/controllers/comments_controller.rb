class CommentsController < ApplicationController

  # POST /comments
  def create
    @comment = Comment.new(params[:comment])

      if @comment.save
        redirect_to @comment.article, notice: 'comment was successfully created.'
      else
        redirect_to @comment.article, notice: 'comment was not successfully created.'
      end
  end
end