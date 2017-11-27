class Portfolio < ApplicationRecord
  has_many :technologies
  # Portfolio.create!(title: "Web App 1", subtitle: "anything", body: "stuff", technologies_attributes: [{name: "Ruby"},{name: "Rails"},{name: "Java"}])
  accepts_nested_attributes_for :technologies, 
                                 allow_destroy: true,
                                 reject_if: lambda { |attrs| attrs['name'].blank? }


  include Placeholder
  validates_presence_of :title, :body
  

  #mount_uploader is a carrierwave method, uses PortfolioUploader
  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  def self.react
    where(subtitle: "React")
  end

  def self.by_position
    order("position ASC")
  end

  scope :rub_on_rails_portfolio, -> { where(subtitle: 'Ruby on Rails') }


end


          