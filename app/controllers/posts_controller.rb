class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    if @post.save
      flash[:notice] = "Post was saved successfully!"
      redirect_to @post
    else
      flash[:error] = "Save unsuccessful, please try again."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    
    if @post.save
      flash[:notice] = "Post was successfully updated!"
      redirect_to @post
    else
      flash[:error] = "Something went wrong, please try again."
      render :edit
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "\"#{@post.title}\" was deleted successfully."
      redirect_to posts_path
    else
      flash[:error] = "There was an error deleting the post, please try again."
      render :show
    end
  end
end
