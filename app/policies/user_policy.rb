class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def complete_profile?
    true
  end

  def update_profile?
    true
  end

  def owner?
    record.user == user
  end
end
