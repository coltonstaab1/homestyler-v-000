# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Colton", email: "colton@gmail.com", password: "hellocats")
User.create(name: "Matthew", email: "matthew@gmail.com", password: "hikitty")
User.create(name: "Kathy", designer: true, email: "kathy@gmail.com", password: "iheartdogs")
Room.create(user_id: 1, description: "Bedroom", width: 15, depth: 102)
Room.create(user_id: 1, description: "Bathroom", width: 12, depth: 50)
Room.create(user_id: 1, description: "Living Room", width: 112, depth: 1253)
Room.create(user_id: 2, description: "Kitchen", width: 42, depth: 5)
Room.create(user_id: 2, description: "Dining Room", width: 51, depth: 23)
Room.create(user_id: 2, description: "Rec Room", width: 25, depth: 52)
Room.create(user_id: 3, description: "Library", width: 125, depth: 234)
Room.create(user_id: 3, description: "Pantry", width: 125, depth: 542)
Room.create(user_id: 3, description: "Family Room", width: 125, depth: 235)