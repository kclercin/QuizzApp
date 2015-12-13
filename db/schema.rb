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

ActiveRecord::Schema.define(version: 20151213185739) do

  create_table "schools", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address1",   limit: 255
    t.string   "address2",   limit: 255
    t.string   "city",       limit: 255
    t.string   "postcode",   limit: 255
    t.integer  "teacher_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "schools_teachers", force: :cascade do |t|
    t.integer "school_id",  limit: 4
    t.integer "teacher_id", limit: 4
  end

  add_index "schools_teachers", ["school_id"], name: "index_schools_teachers_on_school_id", using: :btree
  add_index "schools_teachers", ["teacher_id"], name: "index_schools_teachers_on_teacher_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "login",               limit: 255,             null: false
    t.string   "email",               limit: 255,             null: false
    t.string   "crypted_password",    limit: 255,             null: false
    t.string   "password_salt",       limit: 255,             null: false
    t.string   "persistence_token",   limit: 255,             null: false
    t.string   "single_access_token", limit: 255,             null: false
    t.string   "perishable_token",    limit: 255,             null: false
    t.string   "type",                limit: 16
    t.integer  "login_count",         limit: 4,   default: 0, null: false
    t.integer  "failed_login_count",  limit: 4,   default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip",    limit: 255
    t.string   "last_login_ip",       limit: 255
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

end
