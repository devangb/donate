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

ActiveRecord::Schema.define(version: 20140103022144) do

  create_table "banked_bloods", force: true do |t|
    t.string   "donor"
    t.string   "bloodgroup"
    t.string   "donated_to"
    t.datetime "date"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "banked_bloods", ["hospital_id"], name: "index_banked_bloods_on_hospital_id"

  create_table "hearts", force: true do |t|
    t.string   "heartdonor"
    t.string   "heartdonated_to"
    t.string   "heartbloodgroup"
    t.string   "heartbonemarrow"
    t.integer  "hospital_id"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hearts", ["hospital_id"], name: "index_hearts_on_hospital_id"

  create_table "hospitals", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "hospital_zip"
    t.string   "hospital_address"
    t.string   "hospital_name"
    t.string   "doctor_incharge"
    t.string   "hospital_city"
    t.string   "hospital_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "donor"
    t.string   "bloodgroup"
    t.string   "donated_to"
    t.datetime "date"
    t.boolean  "verify"
    t.string   "kidneydonor"
    t.string   "kidneydonated_to"
    t.string   "kidneybloodgroup"
    t.string   "kidneybonemarrow"
    t.datetime "kidney_date"
    t.string   "kidneytissue_type"
  end

  add_index "hospitals", ["email"], name: "index_hospitals_on_email", unique: true
  add_index "hospitals", ["reset_password_token"], name: "index_hospitals_on_reset_password_token", unique: true

  create_table "kidneys", force: true do |t|
    t.string   "kidneydonor"
    t.string   "kidneydonated_to"
    t.string   "kidneybloodgroup"
    t.string   "kidneybonemarrow"
    t.integer  "hospital_id"
    t.datetime "date"
    t.string   "kidneytissue_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kidneys", ["hospital_id"], name: "index_kidneys_on_hospital_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.string   "address"
    t.string   "bloodgroup"
    t.string   "name"
    t.string   "zip"
    t.boolean  "availability"
    t.datetime "lastdonated"
    t.integer  "age"
    t.string   "city"
    t.boolean  "admin"
    t.string   "gender"
    t.boolean  "verification",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
