class Portfolio < ApplicationRecord
  validates_presence_of :title, :main_image, :body, :thumb_image

  #scope angular:
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= 'http://via.placeholder.com/600x400'
    self.thumb_image ||= 'http://via.placeholder.com/350x200'
  end
end
