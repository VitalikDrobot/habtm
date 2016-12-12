class TagsController < ApplicationController

	before_action :current_tag, only: [:show, :edit, :update, :destroy]

	def index
    @tags = Tag.all
	end

	def new
    @tag = Tag.new
    @posts = Post.all
	end

	def show 
	end

	def edit 
	end

	def create
    tag = Tag.new(tag_params)
    if tag.save
      redirect_to tag
    else
      render :new
    end
	end

  def update
    @tag.update(tag_params)
    redirect_to @tag
  end

  def destroy 
    @tag.delete
    redirect_to tags_path
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :post_ids => [])
  end

  def current_tag
    @tag = Tag.find(params[:id])
  end

end
