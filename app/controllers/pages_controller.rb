class PagesController < ApplicationController
  def home
    @post = Blog.all
    @skill = Skill.find(2)
  end

  def about
  end

  def contact
  end

  def tech_news
    @tweets = SocialTool.twitter_search
  end
end
