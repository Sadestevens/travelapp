# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.create([
  { first_name: "Tiffany",  last_name: "Poss",    username: "female", email: "tposs@gmail.com",          password: "password"},
  { first_name: "Sage",     last_name: "Kieran",  username: "male",   email: "sagekieran@gmail.com",     password: "password"},
  { first_name: "Mike",     last_name: "Rembach", username: "male",   email: "mikerembach@gmail.com",    password: "password"},
  { first_name: "Sade",     last_name: "Stevens", username: "FEmale", email: "saDestevens@gmail.com",    password: "password"}
])

Trip.create([
  { location: "Mexico", title: "Spring Break", title: "going to cancun and getting crazy, but not too crazy!", duration: "April 10, 2015 - April 14, 2015"},
  { location: "Mexico", title: "Spring Break", title: "going to cancun and getting crazy, but not too crazy!", duration: "April 10, 2015 - April 14, 2015"},
  { location: "Mexico", title: "Spring Break", title: "going to cancun and getting crazy, but not too crazy!", duration: "April 10, 2015 - April 14, 2015"},
  { location: "Mexico", title: "Spring Break", title: "going to cancun and getting crazy, but not too crazy!", duration: "April 10, 2015 - April 14, 2015"}
])


  create_table "trips", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id",     null: false
    t.string   "location",    null: false
    t.string   "title",       null: false
    t.string   "description"
    t.string   "duration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
