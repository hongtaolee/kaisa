# encoding: utf-8

class FriendLink < ActiveRecord::Base
  has_paper_trail
  acts_as_paranoid
    
  mount_uploader :pic, ImageUploader
  attr_accessor :pic_cache, :remove_pic, :uploader_secure_token
    
  default_scope order: "position ASC"
  
  validates_presence_of :name, :pic, :position, :url
end
