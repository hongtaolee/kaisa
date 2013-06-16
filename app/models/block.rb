# encoding: utf-8

class Block < ActiveRecord::Base
  has_paper_trail
  acts_as_paranoid
    
  validates_presence_of :name, :content

end
