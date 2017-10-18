class PagesController < ApplicationController
  def home
    @post = Blog.all
    @skill = Skill.find(2)
  end

  def about
  end

  def contact
  end
end
