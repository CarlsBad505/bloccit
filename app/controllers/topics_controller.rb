class TopicsController < ApplicationController
  
  def index
    @topics = Topic.all
  end
  
  def show
    @topic = Topic.find(params[:id])
  end
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = Topic.new
    @topic.name = params[:topic][:name]
    @topic.description = params[:topic][:description]
    @topic.public = params[:topic][:public]
    
    if @topic.save
      flash[:notice] = "Topic was created successfully!"
      redirect_to @topic
    else
      flash[:error] = "Error creating topic, please try again."
      render :new
    end
  end
  
  def edit
    @topic = Topic.find(params[:id])
  end
  
  def update
    @topic = Topic.find(params[:id])
    @topic.name = params[:topic][:name]
    @topic.description = params[:topic][:description]
    @topic.public = params[:topic][:public]
    if @topic.save
      flash[:notice] = "Topic updated successfully!"
      redirect_to @topic
    else
      flash[:error] = "There was an error, please try again."
      render :edit
    end
  end
  
  def destroy
    @topic = Topic.find(params[:id])
    if @topic.destroy
      flash[:notice] = "\"#{@topic.name}\" was deleted successfully!"
      redirect_to action: :index
    else
      flash[:error] = "An error occurred, please try again."
      render :show
    end
  end
end
