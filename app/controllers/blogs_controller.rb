class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :toggle_status]
  before_action :set_sidebar_topics, except: [:update, :create, :destroy, :toggle_status]

  #petergate - authetication for different user roles at controller level
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :toggle_status]}, site_admin: :all


  #go into layout directory, find blog html.erb file and use it instead of application.html.erb
  layout "blog"


  
  def index
    if logged_in?(:site_admin)
      @blogs = Blog.recent#.page(params[:page]).per(5)
    else
      @blogs = Blog.published#.page(params[:page]).per(5)
    end
    @page_title = "Blog"                                                          
  end   

  def show

    if logged_in?(:site_admin) || @blog.published?
                      #includes allows you to 'include' the comments associated with that blog
        @blog = Blog.includes(:comments).friendly.find(params[:id])

        #instantiates a new comment for the comment form on the blog show page
        @comment = Comment.new
       
        @page_title = @blog.title
        @seo_keywords = @blog.body
    else
      redirect_to blogs_path, notice: "You are not authorized to access this page"
    end

  end

 
  def new
    @blog = Blog.new
  end

  def edit
  end
           

  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def toggle_status
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
    redirect_to blogs_url, notice: 'Post status updated'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, 
                                   :body, 
                                   :topic_id, 
                                   :status,
                                   skill_ids: [],
                                   )
    end

    #uses method from topic.rb
    def set_sidebar_topics
      @side_bar_topics = Topic.with_blogs
    end
end
