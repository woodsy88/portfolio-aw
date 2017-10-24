class Portfolio < ApplicationRecord


  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.react
    where(subtitle: "React")
  end

  scope :rub_on_rails_portfolio, -> { where(subtitle: 'Ruby on Rails') }

  #callback - after a portfolio item has been initialized (when new action called)
  # a process that automatically runs after going to new index
  after_initialize :set_defaults
  #sets defaults for new portfolio attributes
  def set_defaults
    self.main_image ||= "http://via.placeholder.com/600x400"
    #the above is essentially doing the below if statement in one line
    # if self.main_image == nil
          #  self.main_image = "http://via.placeholder.com/600x400"
      # end
    self.thumb_image ||= "http://via.placeholder.com/300x150"
  end
end


          