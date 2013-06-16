# encoding: utf-8

class Setting < ActiveRecord::Base

  validates_presence_of :title, :header, :footer

  
  def self.title
    Setting.first.blank? ? '网站头部：通过后台【基本设置】-【站点】编辑' : Setting.first.title
  end

  def self.header
    Setting.first.blank? ? '网站头部：通过后台【基本设置】-【网站头部】编辑' : Setting.first.header
  end
  
  def self.footer
    Setting.first.blank? ? '网站底部：通过后台【基本设置】-【网站底部】编辑' : Setting.first.footer
  end
    
end