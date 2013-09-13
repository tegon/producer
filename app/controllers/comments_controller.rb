class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    flash[:alert] = 'Falha ao criar o comentario' unless @comment.save
    redirect_to @post
  end
end