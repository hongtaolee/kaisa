# encoding: utf-8

class Setting < ActiveRecord::Base

  validates_presence_of :title, :header, :footer
end
