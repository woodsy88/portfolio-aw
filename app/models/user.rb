class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:site_admin], multiple: false)                                      ##
  ############################################################################################ 
 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


# Virtual Atrribute for first_name and last_name
  validates_presence_of :name

  has_many :comments, dependent: :destroy

  def first_name
    #runs on each instance
    self.name.split.first
  end

  def last_name
      self.name.split.last
  end

 def full_name
    self.first_name + " " + self.last_name
  end  
end
