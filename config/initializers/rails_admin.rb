#encoding :'utf-8'

RailsAdmin.config do |config|
  config.audit_with :paper_trail
  
  config.main_app_name = ['凯撒国旅', '网站管理后台']

  config.current_user_method { current_user } # auto-generated

  config.authorize_with :cancan

  config.default_items_per_page = 50
  config.yell_for_non_accessible_fields = false
  
  config.models do        
    fields_of_type :date do
      strftime_format "%m-%d(%w)"
    end
    
    fields_of_type :datetime do
      strftime_format "%m-%d %H:%M"
    end 
  end
  
end
