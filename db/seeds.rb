# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hike.destroy_all
User.destroy_all
Location.destroy_all

test_user = User.create(username: "Test", password: "12345")
test_user_2 = User.create(username: "Test 2", password: "54321")

break_neck_location = Location.create(trail_name: "Break Neck", city: "Fishkill")
anthonys_nose = Location.create(trail_name: "Anthony's Nose", city: "Cortlandt")
elephant_rock = Location.create(trail_name: "Elephant Rock", city: "Ironton")

hike_1 = Hike.create(
  review: "This was a great hike!",
  user: test_user,
  location: anthonys_nose
)
hike_2 = Hike.create(
  review: "I injured myself!",
  user: test_user,
  location: break_neck_location
)
hike_3 = Hike.create(
  review: "The scenary was beautiful!",
  user: test_user_2,
  location: elephant_rock
)
hike_4 = Hike.create(
  review: "There was alot of water and big rocks",
  user: test_user,
  location: elephant_rock
)
hike_5 = Hike.create(
  review: "There was a lot to see!",
  user: test_user_2,
  location: break_neck_location
)