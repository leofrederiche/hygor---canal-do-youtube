class PostController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:post).permit(
      :title,
      :description
    )
  end

end