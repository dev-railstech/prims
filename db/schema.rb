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

ActiveRecord::Schema.define(version: 20140116184223) do

  create_table "account_managers", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.date     "joining_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_3"
    t.string   "post_code"
    t.string   "current_period"
    t.date     "date_on"
    t.date     "date_last_run"
    t.integer  "next_bill_no"
    t.string   "current_year"
    t.integer  "next_contract_number"
    t.integer  "next_allocation_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dealers", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "add_1"
    t.string   "add_2"
    t.string   "add_3"
    t.string   "post_code"
    t.string   "dx"
    t.string   "fax"
    t.string   "tel"
    t.string   "email_1"
    t.string   "email_2"
    t.string   "email_3"
    t.date     "date_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "role"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
