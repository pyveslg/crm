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

ActiveRecord::Schema.define(version: 20170613151029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "address_one"
    t.string   "address_two"
    t.integer  "zipcode"
    t.string   "city"
    t.string   "country"
    t.string   "std_phone"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_addresses_on_company_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "turnover"
    t.string   "logo_url"
    t.string   "domain"
    t.string   "website"
    t.string   "company_type"
    t.integer  "employees"
    t.boolean  "provider"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "part"
    t.string   "title"
    t.string   "gender"
    t.date     "date_of_birth"
    t.integer  "estimated_year_of_birth"
    t.string   "linkedin"
    t.string   "email"
    t.string   "mobile"
    t.string   "address_one"
    t.string   "address_two"
    t.integer  "zipcode"
    t.string   "city"
    t.string   "country"
    t.string   "profile_pic_url"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "workplaces", force: :cascade do |t|
    t.integer  "contact_id"
    t.integer  "company_id"
    t.boolean  "main"
    t.string   "role"
    t.string   "email"
    t.string   "mobile"
    t.string   "direct_line"
    t.string   "address_one"
    t.string   "address_two"
    t.integer  "zipcode"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_workplaces_on_company_id", using: :btree
    t.index ["contact_id"], name: "index_workplaces_on_contact_id", using: :btree
  end

  add_foreign_key "addresses", "companies"
  add_foreign_key "workplaces", "companies"
  add_foreign_key "workplaces", "contacts"
end
