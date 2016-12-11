class PostsController < ApplicationController

	before_action :current_post, only: [:show, :edit, :update, :destroy]

	def index
    @posts = Post.all
	end

	def new
    @post = Post.new
	end

	def show 
	end

	def edit 
	end

	def create
    post = Post.new(post_params)
    @tags = Tag.where(:id => params[:tags])
    @post.tags << @tags
    if post.save
      redirect_to post
    else
      render :new
    end
	end

  def update
    @post.update(post_params)
    redirect_to @post
  end

  def destroy 
    @post.delete
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end

  def current_post
    @post = Post.find(params[:id])
  end

end
