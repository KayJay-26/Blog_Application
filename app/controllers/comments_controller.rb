class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post_and_comment, only: [:destroy]
  before_action :authorize_comment!, only: [:destroy]

  def create
    @post = Post.find(params[:post_id])

    @comment = @post.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @post, notice: "Comment added."
    else
      redirect_to @post, alert: "Failed to add comment."
    end
  end

  def destroy
  @comment.destroy

  redirect_to @post, notice: "Comment deleted."
  end

  private

  def set_post_and_comment
  @post = Post.find(params[:post_id])
  @comment = @post.comments.find(params[:id])
  end

  def authorize_comment!
  redirect_to @post,
              alert: "Not authorized." unless @comment.user == current_user
  end
end