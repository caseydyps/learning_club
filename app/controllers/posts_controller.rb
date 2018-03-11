class PostsController < ApplicationController
  before_action :find_group

  before_action :find_post, only: [:edit, :show, :update, :destroy]

  def new
    @post = @group.posts.new
  end

  def create
    @post = @group.posts.new(post_params)
  
    if @post.save 
      redirect_to @group
    else               
      render :new               
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @group
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to @group
  end

  private

  def find_group
    @group = Group.includes(:posts).find(params[:group_id])
  end

  def find_post
    @post = @group.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name)
  end
end
