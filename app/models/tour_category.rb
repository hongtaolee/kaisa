# encoding: utf-8

class TourCategory < ActiveRecord::Base
  has_many :tours
  default_scope order: "weight DESC"
  
  validates_presence_of :name, :weight
end
