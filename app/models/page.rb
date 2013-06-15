# encoding: utf-8

class Page < ActiveRecord::Base
  validates_presence_of :name, :url_pattern
  
  has_many :page_blocks
  has_many :blocks, :through => :page_blocks
  
  accepts_nested_attributes_for :page_blocks
end
