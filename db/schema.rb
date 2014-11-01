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

ActiveRecord::Schema.define(version: 20141101081125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: true do |t|
    t.string   "maker"
    t.string   "maker_phone"
    t.string   "maker_email"
    t.string   "auction_id"
    t.string   "street_number"
    t.string   "street_name"
    t.string   "total_funds"
    t.datetime "auction_end"
    t.string   "btc_address"
    t.text     "plan"
    t.string   "unique_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bid_threshold"
    t.integer  "available_funds"
  end

  create_table "coins", force: true do |t|
    t.string   "xdp_name"
    t.string   "xdp_address"
    t.string   "btc_address"
    t.string   "proof_of_reserve"
    t.string   "title"
    t.text     "info"
    t.string   "webpage"
    t.string   "dev_name"
    t.string   "dev_contact"
    t.string   "image_1"
    t.string   "image_2"
    t.string   "image_3"
    t.string   "wbi_verified"
    t.string   "capital_assets_value"
    t.text     "capital_assets_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
