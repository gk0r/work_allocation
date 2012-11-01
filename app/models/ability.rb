class Ability
  include CanCan::Ability
  
  def initialize(user)
    # Guest users are allowed to read everything
    # can :read, :all
    can :read, [User]
    
    # Only registered users are allowed to play with things
    if user
      can :read, :all
      can :create, :all
      can :update, :all                                               # All users are allowed to update for now. All updates are logged.
      can :destroy, [BaSpec, TechSpec, Code], :user_id => user.id     # Users are allowed to destroy deliverable components assigned to them.
    
      # Team Leader priviledges
      user.try(:role_ids).to_a.each do |role|
        can :manage, :all if role == 3 # '3' is Team Leader
      end   
    end    
  end

end