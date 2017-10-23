class Blog < ApplicationRecord
  
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  #takes the title of the blog, and converts it into the slug
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

end
