class TrapController < ApplicationController
  def index
    @traps = Trap.order(:trap_id)
  end

  def create
    trap_id = Trap.create_request(request.env)

    ActionCable.server.broadcast('request_channel', trap_id: trap_id, req: render_request(trap_id))
    redirect_to root_path
  end

  def requests
    @requests = Request.get_by_trap(params[:trap_id])
    @trap_id = params[:trap_id]
  end

  private

  def render_request(trap_id)
    req = Request.get_by_trap(trap_id).first

    render_to_string partial: 'trap/request', locals: {req: req}, layout: false
  end
end
