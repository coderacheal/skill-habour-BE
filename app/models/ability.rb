class Ability
    include CanCan::Ability
  
    def initialize(user)
      if user.present?
        can :create, Course
      end
    end
  end