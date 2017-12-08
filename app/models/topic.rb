class Topic < ApplicationRecord

  validates_presence_of :title

  has_many :blogs

#gets an array of topics with atleast 1 blog associated with them
  def self.with_blogs
    includes(:blogs).where.not(blogs: { id: nil })
    #      blog_filled_array = []
#         topics = Topic.all
# iterates over all the topics and only store topics that have 1 or more blogs
#         topics.each do |topic|
#         blog_filled_array << topic if topic.blogs.count > 0
#         end
  end

end



