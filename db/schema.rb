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

ActiveRecord::Schema.define(version: 20131226194153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.text     "question_1"
    t.text     "question_2"
    t.text     "question_3"
    t.text     "host"
    t.text     "keyword"
    t.string   "encrypted_keyword",     default: "", null: false
    t.string   "reset_keyword_token"
    t.datetime "reset_keyword_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",         default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "events", ["host"], name: "index_events_on_host", using: :btree
  add_index "events", ["reset_keyword_token"], name: "index_events_on_reset_keyword_token", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "first_answer"
    t.text     "second_answer"
    t.text     "third_answer"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "users", ["event_id"], name: "index_users_on_event_id", using: :btree

end
