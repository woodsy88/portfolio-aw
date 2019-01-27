class PagesController < ApplicationController
  def home
    @post = Blog.all
    @recent_snippets = Blog.where(status: "published").order("created_at DESC").limit(3)

    @skills = Skill.all
    @design_skills = Skill.where(area: 'design')
    @development_skills = Skill.where(area: 'development')
    @management_skills = Skill.where(area: 'management')
    @marketing_skills = Skill.where(area: 'marketing')
    @jobs = Job.all    
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

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
