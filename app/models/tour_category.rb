# encoding: utf-8

class TourCategory < ActiveRecord::Base
  has_paper_trail
  acts_as_paranoid
    
  has_many :tours
  default_scope order: "weight DESC"
  
  validates_presence_of :name, :weight
end
