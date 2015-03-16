# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.create([
  { first_name: "Tiffany",  last_name: "Poss",    username: "female", email: "tposs@gmail.com",       password: "password"},
  { first_name: "Sage",     last_name: "Kieran",  username: "male",   email: "sagekieran@gmail.com",  password: "password"},
  { first_name: "Mike",     last_name: "Rembach", username: "male",   email: "mikerembach@gmail.com", password: "password"},
  { first_name: "Sade",     last_name: "Stevens", username: "FEmale", email: "sadestevens@gmail.com", password: "password"}
])

Trip.create([
  { group_id: Group.find_by(user_id: User.find_by(email: "tposs@gmail.com").id      )), user_id: User.find_by(email: "tposs@gmail.com").id       location: "Mexico", title: "Spring Break", title: "going to cancun and getting crazy, but not too crazy!", duration: "April 10, 2015 - April 14, 2015"},
  { group_id: Group.find_by(user_id: User.find_by(email: "sagekieran@gmail.com").id )), user_id: User.find_by(email: "sagekieran@gmail.com").id  location: "Mexico", title: "Spring Break", title: "going to cancun and getting crazy, but not too crazy!", duration: "April 10, 2015 - April 14, 2015"},
  { group_id: Group.find_by(user_id: User.find_by(email: "mikerembach@gmail.com").id)), user_id: User.find_by(email: "mikerembach@gmail.com").id location: "Mexico", title: "Spring Break", title: "going to cancun and getting crazy, but not too crazy!", duration: "April 10, 2015 - April 14, 2015"},
  { group_id: Group.find_by(user_id: User.find_by(email: "sadestevens@gmail.com").id)), user_id: User.find_by(email: "sadestevens@gmail.com").id location: "Mexico", title: "Spring Break", title: "going to cancun and getting crazy, but not too crazy!", duration: "April 10, 2015 - April 14, 2015"}
])

