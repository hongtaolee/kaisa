#encoding: utf-8
class Ability
  include CanCan::Ability
  def initialize(user)    
    #user_rw = [User, Role, Department, Job]
    
    can :access, :rails_admin
    can :dashboard
    if user.role == 'admin'
      can :manage, [AdPosition, Block, FocusImage, FriendLink, Navigation, PageBlock, Page, Image, Setting, TourCategory, Tour, User]
    end
  end
  
end