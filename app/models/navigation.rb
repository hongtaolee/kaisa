# encoding: utf-8

class Navigation < ActiveRecord::Base

  default_scope order: "position ASC"
  
  validates_presence_of :name, :url, :position
end
