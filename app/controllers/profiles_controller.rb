class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])

    @posts = @user.posts.order(created_at: :desc)

    @comments = @user.comments.order(created_at: :desc)
  end
end