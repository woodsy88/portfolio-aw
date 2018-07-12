class BlogSkill < ApplicationRecord
  belongs_to :blog
  belongs_to :skill
end