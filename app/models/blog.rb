class Blog < ApplicationRecord
  
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  #takes the title of the blog, and converts it into the slug
  friendly_id :title, use: :slugged

  #part of paginate, latest blogs created are the first to show
  #default_scope -> { order(updated_at: :desc) }

  validates_presence_of :title, :body, :topic_id

  belongs_to :topic #, optional: true

  has_many :comments, dependent: :destroy


  has_many :blog_skills
  has_many :skills, through: :blog_skills

  def self.featured_blogs
    limit(2)
  end

  def self.recent
    order("created_at Desc")
  end

end
