class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for   :technologies,
                                  allow_destroy: true,
                                  reject_if: lambda {|techno_attrs| techno_attrs['name'].blank?}

  validates_presence_of :title, :body

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  #scope angular:
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

  def self.by_position
    order("position ASC")
  end
end
