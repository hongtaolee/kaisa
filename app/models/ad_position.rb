# encoding: utf-8

class AdPosition < ActiveRecord::Base
  mount_uploader :pic, ImageUploader
  attr_accessor :pic_cache, :remove_pic, :uploader_secure_token
  
  validates_presence_of :name, :url, :code
end
