class RenameTrapToRequestAndAddFields < ActiveRecord::Migration[5.1]
  def change
    rename_table :traps, :requests

    rename_column :requests, :headers, :accept
    add_column :requests, :accept_encoding, :string
    add_column :requests, :accept_language, :string
    add_column :requests, :server_protocol, :string
    add_column :requests, :server_software, :string
    add_column :requests, :request_path, :string
    add_column :requests, :http_version, :string
    add_column :requests, :http_host, :string
    add_column :requests, :http_user_agent, :string
  end
end
