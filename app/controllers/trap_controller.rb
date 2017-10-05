class TrapController < ApplicationController
  def index
    @traps = Trap.order(:trap_id)
  end

  def create
    Trap.create_request(request.env)

    redirect_to root_path
  end

  def requests
    @requests = Request.get_by_trap(params[:trap_id])
    @trap_id = params[:trap_id]
  end
end
