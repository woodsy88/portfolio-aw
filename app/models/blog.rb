class Blog < ApplicationRecord
  
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  #takes the title of the blog, and converts it into the slug
  friendly_id :title, use: :slugged

  #part of paginate, latest blogs created are the first to show
  default_scope -> { order(updated_at: :desc) }

  validates_presence_of :title, :body

  belongs_to :topic, optional: true

  has_many :comments, dependent: :destroy

end
