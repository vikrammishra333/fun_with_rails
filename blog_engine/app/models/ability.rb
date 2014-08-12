class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    role = user.current_role

    case role
      when 'Admin'
        can :manage, :all
      when 'Blog Owner'
      when 'Blog Contributor'
      when 'Blog Subscriber'
      else
        can :read, [Blog, Post]
    end

  end

end
