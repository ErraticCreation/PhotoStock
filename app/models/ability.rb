class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user not logged in
    can :manage, User, id: user.id
  end

end
