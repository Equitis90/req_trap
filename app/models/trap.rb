class Trap < ApplicationRecord
  has_many :requests, :dependent => :destroy

  private

  def self.create_request(env)
    Request.create(
        request_date: Time.zone.now,
        remote_ip: env['REMOTE_ADDR'],
        request_method: env['REQUEST_METHOD'],
        scheme: env['rack.url_scheme'],
        query_string: env['rack.request.query_string'],
        query_params: env['action_dispatch.request.query_parameters'],
        cookies: env['HTTP_COOKIE'],
        accept: env['HTTP_ACCEPT'],
        accept_encoding: env['HTTP_ACCEPT_ENCODING'],
        accept_language: env['HTTP_ACCEPT_LANGUAGE'],
        server_protocol: env['SERVER_PROTOCOL'],
        server_software: env['SERVER_SOFTWARE'],
        gateway_interface: env['GATEWAY_INTERFACE'],
        request_path: env['REQUEST_PATH'],
        http_version: env['HTTP_VERSION'],
        http_host: env['HTTP_HOST'],
        http_user_agent: env['HTTP_USER_AGENT'],
        trap_id: self.where(trap_id: env['REQUEST_PATH'][1..-1]).first_or_create.id
    )
  end
end
