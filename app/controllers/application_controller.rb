class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_controller, :current_action
   
  before_filter :get_page
  
  def current_controller
    self.class.to_s.underscore.gsub(/_controller$/,'')
  end

  def current_action
    self.action_name.underscore
  end
    
  def action_url
    "#{current_controller}##{current_action}"
  end
    
  def get_page
    Page.all.each do |page|
      if request.fullpath =~ /#{page.url_pattern}/ || action_url == page.url_pattern
        @page = page
        break
      end
    end
  end
  
end