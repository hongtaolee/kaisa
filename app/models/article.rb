class Article < ActiveRecord::Base
  attr_accessible :content, :deleted_at, :title
end
