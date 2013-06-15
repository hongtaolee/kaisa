# encoding: utf-8

class PageBlock < ActiveRecord::Base
  
  belongs_to :page, :inverse_of => :page_blocks
  belongs_to :block
  
  default_scope order: "position ASC"
  
  validates_presence_of :block_id, :position

end