# frozen_string_literal: true

class Ability
  include CanCan::Ability
  PERMISSIONS = {
    dev: { power: :manage, models: :all },
    admin: { power: :manage, models: :all },
    manager: { power: :manage, models: :all },
    enterprise: { power: :manage, models: :all },
    enterprise_manager: { power: :manage, models: :all },
    enterprise_seeker: { power: :manage, models: :all }
  }

  def initialize(user)
    user ||= User.new
    return check_permissions(user) if user.roles.present?

    can :read, :all
  end

  def check_permissions(user)
    role = user.roles.map(&:name).last.to_sym
    puts role.inspect
    can PERMISSIONS[role][:power], PERMISSIONS[role][:models]
  end
end
