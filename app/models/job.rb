class Job < ApplicationRecord
  has_many :comments

  has_many :job_skills
  has_many :skills, through: :job_skills
end
