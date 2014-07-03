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

ActiveRecord::Schema.define(version: 20140701065952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "astros", force: true do |t|
    t.string   "sign"
    t.text     "about"
    t.text     "dailyfeed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chats", force: true do |t|
    t.integer  "user1_id"
    t.integer  "user2_id"
    t.text     "messages"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lunars", force: true do |t|
    t.string   "animal"
    t.text     "about"
    t.text     "dailyfeed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "chat_id"
    t.string   "username"
    t.text     "messages"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_admin",        default: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "gender"
    t.string   "preference"
    t.date     "birthday"
    t.string   "suburb"
    t.string   "cuisines"
    t.string   "hobbies"
    t.text     "about"
    t.text     "image"
    t.integer  "astro_id"
    t.integer  "lunar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
