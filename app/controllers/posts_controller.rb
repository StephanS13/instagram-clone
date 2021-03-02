class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    # if @post.save
    #   flash[:success] = "Post successfully created"
    #   redirect_to @post
    # else
    #   flash[:error] = "Something went wrong"
    #   render 'new'
    # end
  end
    
  def show
  end

  private

  def posts_params
    params.require(:post).permit(:image, :image_cache)
  end
end
