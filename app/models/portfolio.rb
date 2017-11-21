class Portfolio < ApplicationRecord
  has_many :technologies
  # Portfolio.create!(title: "Web App 1", subtitle: "anything", body: "stuff", technologies_attributes: [{name: "Ruby"},{name: "Rails"},{name: "Java"}])
  accepts_nested_attributes_for :technologies, 
                                 reject_if: lambda { |attrs| attrs['name'].blank? }


  include Placeholder
  
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.react
    where(subtitle: "React")
  end

  def self.by_position
    order("position ASC")
  end

  scope :rub_on_rails_portfolio, -> { where(subtitle: 'Ruby on Rails') }

  #callback - after a portfolio item has been initialized (when new action called)
  # a process that automatically runs after going to new index
  after_initialize :set_defaults
  #sets defaults for new portfolio attributes
  # if an image is entered by the user, then it skips these, if no image is added,then it sets defaults
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    #the above is essentially doing the below if statement in one line
    # if self.main_image == nil
          #  self.main_image = "http://via.placeholder.com/600x400"
      # end
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end


          