class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized  

  has_many :job_skills
  has_many :jobs, through: :job_skills

  has_many :portfolio_skills
  has_many :portfolios, through: :portfolio_skills

  has_many :blog_skills
  has_many :blogs, through: :blog_skills
end
