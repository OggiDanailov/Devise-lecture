class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  end

  def show
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	else
  end

  def edit
  end

  def updated
  end

  def destroy
  end

  private

  def post_params
  	params.require(:post).permit(:title, :body)
  end



end
