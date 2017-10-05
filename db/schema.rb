# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171005062057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "requests", force: :cascade do |t|
    t.datetime "request_date"
    t.string "remote_ip"
    t.string "request_method"
    t.string "scheme"
    t.string "query_string"
    t.string "query_params"
    t.string "cookies"
    t.string "accept"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "accept_encoding"
    t.string "accept_language"
    t.string "server_protocol"
    t.string "server_software"
    t.string "request_path"
    t.string "http_version"
    t.string "http_host"
    t.string "http_user_agent"
    t.string "gateway_interface"
    t.bigint "trap_id"
    t.index ["trap_id"], name: "index_requests_on_trap_id"
  end

  create_table "traps", force: :cascade do |t|
    t.string "trap_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
