module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Devcamp tutorial | portfolio'
    @seo_keywords = 'portfolio blog tutorial'
  end
end