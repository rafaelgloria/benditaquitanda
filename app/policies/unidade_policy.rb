class UnidadePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
end
