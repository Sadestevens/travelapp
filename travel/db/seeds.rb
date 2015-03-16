# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.create([
  { first_name: "Angelina", last_name: "Bethoney", username: "female", email: "ambethoney@yahoo.com", password: "password"},
  { first_name: "Sarah", last_name: "McAlear", username: "female", email: "sarahm@yahoo.com", password: "password"},
  { first_name: "Brian", last_name: "Rucker", username: "male", email: "brucker@gmail.com", password: "password"}
])




  create_table "users", force: :cascade do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "username",        null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "session_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
