# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140714143947) do

  create_table "agents", force: true do |t|
    t.string   "name"
    t.boolean  "front_index"
    t.string   "website_name"
    t.string   "website_url"
    t.string   "email"
    t.string   "cell_phone"
    t.string   "land_phone"
    t.string   "yada"
    t.string   "default_agent"
    t.boolean  "inactive"
    t.boolean  "rentals"
    t.boolean  "residential"
    t.boolean  "commercial"
    t.string   "income"
    t.string   "vacant_land"
    t.string   "html_name"
    t.integer  "lead_rotation_index"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "crypted_password",          limit: 40
    t.string   "salt",                      limit: 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                default: "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], name: "index_users_on_state"

end
