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

ActiveRecord::Schema.define(version: 20150405172621) do

  create_table "comments", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "user_id",     limit: 4
    t.integer  "work_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree
  add_index "comments", ["work_id"], name: "index_comments_on_work_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "description", limit: 255
    t.date     "deadline"
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "contact",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "works", force: :cascade do |t|
    t.string   "status",     limit: 255
    t.string   "version",    limit: 255
    t.string   "type",       limit: 255
    t.string   "file",       limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "works", ["user_id"], name: "index_works_on_user_id", using: :btree

  add_foreign_key "comments", "users"
  add_foreign_key "comments", "works"
  add_foreign_key "tasks", "users"
  add_foreign_key "works", "users"
end
