# encoding: utf-8

class Image < ActiveRecord::Base

  mount_uploader :pic, ImageUploader
  attr_accessor :pic_cache, :remove_pic, :uploader_secure_token
  
  default_scope order: "position ASC"
  
  validates_presence_of :name, :pic, :position
end
