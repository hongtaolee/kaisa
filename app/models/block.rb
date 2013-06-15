# encoding: utf-8

class Block < ActiveRecord::Base
  
  validates_presence_of :name, :content
  
end
