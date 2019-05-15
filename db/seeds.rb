# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Location.destroy_all
ListItem.destroy_all
Trip.destroy_all


#Users
meredith = User.create!(first_name: 'Meredith', last_name: 'Strickland', email: 'mere.strickland@gmail.com', password: 'hi')

#Locations
nyc = Location.create!(name: 'New York City', coordinates: '40.7128, -74.0060')

#Trips
nyc_mere = Trip.create!(name: 'Mere <3 NY', location_id: nyc.id, user_id: meredith.id)

#ListItems
ListItem.create!(name: 'Noguchi Museum', description: 'museum housing Noguchi sculptures featuring a sculpture garden', image_url: 'https://www.noguchi.org/sites/default/files/collection/vic1.jpg?1287004287', trip_id: nyc_mere.id)