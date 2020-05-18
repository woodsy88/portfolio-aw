class Job < ApplicationRecord
  has_many :comments
  has_many :portfolios

  has_many :job_skills
  has_many :skills, through: :job_skills

  after_initialize :init


  def init
    self.current  ||= false          #will set the default value only if it's nil
    self.acquired ||= false
    # self.address ||= build_address #let's you set a default association
  end
   
end
