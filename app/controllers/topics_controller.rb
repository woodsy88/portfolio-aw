class TopicsController < ApplicationController
before_action :set_sidebar_topics
before_action :set_topic, only: [:edit, :show, :update, :destroy]

 access all: [:show, :index], user: {except: [:new, :create, :update, :edit]}, site_admin: :all

  layout 'blog'

 def new 
    @topic = Topic.new
 end 

  def create
      @topic = Topic.new(topic_params)
      respond_to do  |format|
        if @topic.save
          format.html {redirect_to(topics_path)}
        else
          format.html { render 'new' }
        end
    end
  end

  def index
    @topics = Topic.with_blogs
  end

  def show
    
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(10)
    else
      @blogs = @topic.blogs.published.page(params[:page]).per(10)
    end
  end


  def edit
  end

  def update
    
    respond_to do |format|
      if @topic.update(topic_params)
         format.html { redirect_to (topics_path) }
        else
          format.html { render :edit }
      end  
    end
  end



  private
  #uses method from topic.rb
  def set_sidebar_topics
    @side_bar_topics = Topic.with_blogs
  end

  def topic_params
    params.require(:topic).permit(:title)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

end
