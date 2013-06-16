# encoding: utf-8

class Tour < ActiveRecord::Base
  has_paper_trail
  acts_as_paranoid
    
  belongs_to :tour_category
  default_scope order: "weight ASC"
  
  validates_presence_of :name, :tour_category_id, :price, :content, :weight
end