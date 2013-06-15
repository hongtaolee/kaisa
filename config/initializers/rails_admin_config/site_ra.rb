# encoding: utf-8 
RailsAdmin.config do |config|
  config.model Setting do
    navigation_label '网站设置'
    weight -1000
    
    list do
      fields :title, :header, :footer
    end
    
    edit do
      field :title
      field :header do
        ckeditor true
      end
      field :footer do
        ckeditor true
      end
    end
  end
  
  config.model FocusImage do
    navigation_label '网站设置'
    weight -999
    
    list do
      fields :name, :url, :pic, :position
    end
    
    edit do
      field :name
      field :url
      field :position
      field :pic, :carrierwave
    end
  end  
  
end