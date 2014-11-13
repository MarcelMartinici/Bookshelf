class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :read, :update, :destroy, :to => :crud
    user ||= User.new #guest user
    
    if user.is? ('admin')
      can :manage, :all  
    elsif user.is? ('moderator') 
      can :read, :all
      can :create, :all
      can :crud, Book, :user_id=>user.id 
    else
      can :read, :all
    end
  end    
end
