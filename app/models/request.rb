class Request < ApplicationRecord
  belongs_to :trap

  validates_presence_of :trap

  private

  def self.get_by_trap(trap_id)
    self.joins(:trap).where('traps.trap_id = ?', trap_id).order(request_date: :desc)
  end
end
