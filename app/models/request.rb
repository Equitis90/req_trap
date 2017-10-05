class Request < ApplicationRecord
  belongs_to :trap

  private

  def self.get_by_trap(trap_id)
    self.where(trap_id: Trap.where(trap_id: trap_id)).order(request_date: :desc)
  end
end
