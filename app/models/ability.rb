class Ability
  include CanCan::Ability

  def initialize(user)
    unless user
      can :read, :all
      else
        can :read, :all
        if user.admin?
          can :manage, :all
        end
      end
  end
end
