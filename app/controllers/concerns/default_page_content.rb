module DefaultPageContent
  extend ActiveSupport::Concern

  
  included do 
    before_action :set_page_defaults
  end 


  def set_page_defaults 
    @page_title = "Cameron Augustine's Portfolio"
    @seo_keywords = "Cameron Augustine Portfolio"
  end 

end 