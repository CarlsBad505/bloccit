class TopicsController < ApplicationController
  before_action :require_sign_in, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show]
  
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
    @topic = Topic.new(topic_params)
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
    @topic.assign_attributes(topic_params)
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
  
  private
  
  def topic_params
    params.require(:topic).permit(:name, :description, :public)
  end
  
  def authorize_user
    unless current_user.admin?
      flash[:error] = "You must be an admin to do that."
      redirect_to(topics_path)
    end
  end
end
