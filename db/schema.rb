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

ActiveRecord::Schema.define(version: 20160606045814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "address1",             null: false
    t.string   "address2"
    t.string   "city",                 null: false
    t.string   "state",      limit: 2, null: false
    t.string   "zip",                  null: false
    t.string   "home_phone"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "village_id"
    t.integer  "riba_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["riba_id"], name: "index_locations_on_riba_id", using: :btree
  add_index "locations", ["village_id"], name: "index_locations_on_village_id", using: :btree

  create_table "ribas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ribas", ["name"], name: "index_ribas_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.string   "sex"
    t.integer  "father_id"
    t.integer  "mother_id"
    t.integer  "current_spouse_id"
    t.string   "first_name",                          null: false
    t.string   "middle_name"
    t.string   "last_name",                           null: false
    t.integer  "riba_id"
    t.date     "birthday"
    t.string   "work_phone"
    t.string   "cell_phone"
    t.integer  "address_id"
    t.integer  "pin"
    t.date     "valid_until"
    t.integer  "village_id"
    t.string   "immigration_status"
    t.string   "occupation"
    t.string   "education"
    t.integer  "resident_years"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["current_spouse_id"], name: "index_users_on_current_spouse_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["father_id", "mother_id", "current_spouse_id"], name: "index_users_on_father_id_and_mother_id_and_current_spouse_id", unique: true, using: :btree
  add_index "users", ["father_id"], name: "index_users_on_father_id", using: :btree
  add_index "users", ["mother_id"], name: "index_users_on_mother_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["riba_id"], name: "index_users_on_riba_id", using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  add_index "users", ["village_id"], name: "index_users_on_village_id", using: :btree

  create_table "villages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "villages", ["name"], name: "index_villages_on_name", using: :btree

  add_foreign_key "locations", "ribas"
  add_foreign_key "locations", "villages"
end
