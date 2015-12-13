class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is_a?(Teacher)
      can :create, :school
    else

    end

  end
end
