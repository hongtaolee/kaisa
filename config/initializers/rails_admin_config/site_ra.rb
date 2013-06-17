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

  config.model Navigation do
    navigation_label '网站设置'
    weight -999
    
    list do
      fields :name, :url, :position
    end
    
    edit do
      field :name
      field :url
      field :position
    end
  end
  
  config.model AdPosition do
    navigation_label '网站设置'
    weight -998
    
    list do
      fields :code, :name, :pic, :url
    end
    
    edit do
      field :code
      field :name
      field :url
      field :pic, :carrierwave
    end
  end
    
  config.model FocusImage do
    navigation_label '网站设置'
    weight -997
    
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
  
  config.model FriendLink do
    navigation_label '网站设置'
    weight -996
    
    list do
      fields :name, :pic, :position, :url
    end
    
    edit do
      field :name
      field :position
      field :url
      field :pic, :carrierwave
    end
  end  

  config.model Page do
    navigation_label '内容管理'
    weight -800
    
    list do
      fields :name, :url_pattern
    end
    
    edit do
      field :name
      field :url_pattern
      field :page_blocks
    end
  end
  
  config.model PageBlock do
    navigation_label '内容管理'
    weight -799
    
    list do
      fields :page, :block, :position
    end
    
    edit do
      field :page
      field :block
      field :position
    end    
  end
    
  config.model Block do
    navigation_label '内容管理'
    weight -798
    
    list do
      fields :name, :content
    end
    
    edit do
      field :name
      field :content do
        ckeditor true
      end
    end
  end
  
  config.model Image do
    navigation_label '内容管理'
    weight -797
    
    list do
      fields :name, :position, :pic
    end
    
    edit do
      field :name
      field :position
      field :pic, :carrierwave
    end
  end
  
  config.model TourCategory do
    navigation_label '内容管理'
    weight -796
    
    list do
      fields :name, :weight
    end
    
    edit do
      field :name
      field :weight
    end
  end
  
  config.model Tour do
    navigation_label '内容管理'
    weight -795
    
    list do
      fields :name, :tour_category, :price, :weight, :is_hot, :is_recommend
    end
    
    edit do
      field :tour_category
      field :name
      field :price
      field :weight
      field :is_hot
      field :is_recommend
      field :typee
      field :content do
        ckeditor true
      end
    end
  end
  
  config.model Article do
    navigation_label '内容管理'
    weight -794
    
    list do
      fields :title, :content
    end
    
    edit do
      field :title
      field :content do
        ckeditor true
      end
    end
  end    
  
end