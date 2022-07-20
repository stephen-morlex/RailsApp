class Ability
  include CanCan::Ability
  def initialize(user)
    can :access, :rails_admin   # grant access to rails_admin
    can :read, :dashboard       # grant access to the dashboard
    can :read, :all                 # allow everyone to read everything
    # return unless user && user.admin?
    # can :access, :rails_admin       # only allow admin users to access Rails Admin
    # can :read, :dashboard           # allow access to dashboard
    # if user.role? :superadmin
    #   can :manage, :all             # allow superadmins to do anything
    # elsif user.role? :manager
    #   can :manage, [User, Article, Comment]  # allow managers to do anything to products and users
    # elsif user.role? :sales
    #   can :update, Article, hidden: false  # allow sales to only update visible products
    # end
  end
end