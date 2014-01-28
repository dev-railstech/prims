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

ActiveRecord::Schema.define(version: 20140126190547) do

  create_table "account_managers", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.date     "joining_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "allocations", force: true do |t|
    t.text     "descriptiom"
    t.integer  "contract_id"
    t.float    "debit"
    t.float    "credit"
    t.integer  "supplier_id"
    t.text     "analysis"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills", force: true do |t|
    t.integer  "company_id"
    t.integer  "contract_id"
    t.integer  "period"
    t.integer  "item_id"
    t.integer  "type"
    t.integer  "collect"
    t.integer  "discount"
    t.integer  "unique"
    t.integer  "number"
    t.string   "yr"
    t.string   "qty"
    t.boolean  "vat"
    t.boolean  "closed"
    t.float    "val"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", force: true do |t|
    t.integer  "times"
    t.text     "title"
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

  create_table "details", force: true do |t|
    t.text     "description"
    t.integer  "vat_code"
    t.float    "val"
    t.string   "nom"
    t.integer  "qty"
    t.float    "item_val"
    t.integer  "link"
    t.date     "date_added"
    t.integer  "plink"
    t.boolean  "suspend"
    t.string   "why"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "let_types", force: true do |t|
    t.integer  "type"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nominals", force: true do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "times"
    t.text     "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "code"
    t.text     "description"
    t.string   "nom_code"
    t.float    "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_3"
    t.string   "address_4"
    t.string   "post_code"
    t.string   "client_dx"
    t.string   "tel_1"
    t.string   "tel_2"
    t.text     "description"
    t.string   "client_fax"
    t.float    "last_val"
    t.float    "purchase_price"
    t.date     "purchase_date"
    t.date     "last_val_date"
    t.string   "loan_with"
    t.float    "loan_amount"
    t.boolean  "vat"
    t.integer  "account_manager_id"
    t.integer  "portfolio"
    t.string   "bought_from"
    t.float    "total_value"
    t.date     "date_on"
    t.date     "client_dv"
    t.integer  "contract_type"
    t.integer  "contract_collect"
    t.integer  "contract_dealer"
    t.float    "contract_billed"
    t.date     "contract_renew"
    t.date     "date_m_visit"
    t.string   "last_person"
    t.boolean  "contract_vis_1"
    t.boolean  "contract_vis_2"
    t.boolean  "contract_vis_3"
    t.boolean  "contract_vis_4"
    t.boolean  "contract_vis_5"
    t.boolean  "contract_vis_6"
    t.boolean  "contract_vis_7"
    t.boolean  "contract_vis_8"
    t.boolean  "contract_vis_9"
    t.boolean  "contract_vis_10"
    t.boolean  "contract_vis_11"
    t.boolean  "contract_vis_12"
    t.integer  "client_no_visits"
    t.boolean  "property_sold"
    t.date     "property_sold_date"
    t.float    "property_sell_val"
    t.date     "property_last_bill"
    t.float    "property_last_bill_val"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.date     "date"
    t.string   "chq_no"
    t.float    "debit"
    t.float    "credit"
    t.text     "description"
    t.integer  "allocation_id"
    t.string   "balance"
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
