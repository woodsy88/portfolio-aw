class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


# Virtual Atrribute for first_name and last_name
  validates_presence_of :name

  def first_name
    #runs on each instance
    self.name.split.first
  end

  def last_name
      self.name.split.last
  end
end
