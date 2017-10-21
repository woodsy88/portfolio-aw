class Blog < ApplicationRecord
  extend FriendlyId
  #takes the title of the blog, and converts it into the slug
  friendly_id :title, use: :slugged

end
