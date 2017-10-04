class TrapController < ApplicationController
  def index
    @requests = Request.all
  end

  def create
    Request.create(
        request_date: Time.zone.now,
        remote_ip: request.env["REMOTE_ADDR"],
        request_method: request.env["REQUEST_METHOD"],
        scheme: request.env["rack.url_scheme"],
        query_string: request.env["rack.request.query_string"],
        query_params: request.env["action_dispatch.request.query_parameters"],
        cookies: request.env["HTTP_COOKIE"],
        accept: request.env["HTTP_ACCEPT"],
        accept_encoding: request.env["HTTP_ACCEPT_ENCODING"],
        accept_language: request.env["HTTP_ACCEPT_LANGUAGE"],
        server_protocol: request.env["SERVER_PROTOCOL"],
        server_software: request.env["SERVER_SOFTWARE"],
        gateway_interface: request.env["GATEWAY_INTERFACE"],
        request_path: request.env["REQUEST_PATH"],
        http_version: request.env["HTTP_VERSION"],
        http_host: request.env["HTTP_HOST"],
        http_user_agent: request.env["HTTP_USER_AGENT"],
    )

    redirect_to root_path
  end
end
