class PagesController < ApplicationController
  def home
    @post = Blog.all
  end

  def about
    @skills = Skill.all
    @jobs = Job.all
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
