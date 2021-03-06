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

ActiveRecord::Schema.define(version: 20150319081800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["trip_id"], name: "index_categories_on_trip_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer  "suggestion_id"
    t.integer  "user_id"
    t.text     "content",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comments", ["suggestion_id"], name: "index_comments_on_suggestion_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "friends", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "trip_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "groups", ["trip_id"], name: "index_groups_on_trip_id", using: :btree
  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "suggestions", force: :cascade do |t|
    t.integer  "user_id",                 null: false
    t.integer  "category_id",             null: false
    t.string   "title",                   null: false
    t.text     "content"
    t.string   "link"
    t.integer  "upvote",      default: 0
    t.integer  "downvote",    default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "chosen_date"
  end

  add_index "suggestions", ["category_id"], name: "index_suggestions_on_category_id", using: :btree
  add_index "suggestions", ["user_id"], name: "index_suggestions_on_user_id", using: :btree

  create_table "tokens", force: :cascade do |t|
    t.string   "access_token"
    t.string   "refresh_token"
    t.datetime "expires_at"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id",     null: false
    t.string   "location",    null: false
    t.string   "title",       null: false
    t.string   "description"
    t.string   "duration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "trips", ["group_id"], name: "index_trips_on_group_id", using: :btree
  add_index "trips", ["user_id"], name: "index_trips_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "username",        null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "session_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
