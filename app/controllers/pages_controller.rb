class PagesController < ApplicationController
  # before_action :force_json, only: :search
  
  def home
    # @post = Blog.all
    # @recent_snippets = Blog.where(status: "published").order("created_at DESC").limit(3)

    # @skills = Skill.all
    # @design_skills = Skill.where(area: 'design')
    # @development_skills = Skill.where(area: 'development')
    # @management_skills = Skill.where(area: 'management')
    # @marketing_skills = Skill.where(area: 'marketing')
    
  end

  def about
    @skills = Skill.all
    @design_skills = Skill.where(area: 'design')
    @development_skills = Skill.where(area: 'development')
    @management_skills = Skill.where(area: 'management')
    @marketing_skills = Skill.where(area: 'marketing')
    @jobs = Job.all
  end

  def recent_snippets
    @recent_snippets = Blog.order("created_at DESC").limit(3)
  end

  def work
    @jobs = Job.all
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end

  # related to file search.json.jbuilder
  def search
                        # search the name column to find names that contain search querry
    @jobs = Job.ransack(job_title_cont: params[:q]).result(distinct: true)
    @portfolios = Portfolio.ransack(title_cont: params[:q]).result(distinct: true)
    @skills = Skill.ransack(title_cont: params[:q]).result(distinct: true)
    

    respond_to do |format|
      format.html {}
      format.json {
        @jobs = @jobs.limit(5)
        @portfolios = @portfolios.limit(5)
        @skills = @skills.limit(5)
      }
    end
  end

  # private

  # url /search will serve json without needing to use /search.json in url
  # def force_json
  #   request.format = :json
  # end
end
