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
jael = User.create!(first_name: 'Jael', last_name: 'McCants', email: 'jael@hi.com', password: 'hi' )
sadijia = User.create!(first_name: 'Sadijia', last_name: 'Bené', email: 'sadijia@hi.com', password: 'hi')
jamez = User.create!(first_name: 'James', last_name: 'Front Door', email: 'james@hi.com', password: 'hi')

#Locations
nyc = Location.create!(name: 'New York City', coordinates: '40.7128, -74.0060')
cdmx = Location.create!(name: 'Mexico City', coordinates: '19.4326, -99.1332')
barcelona = Location.create!(name: 'Barcelona', coordinates:'41.3851, 2.1734')


#Trips
nyc_mere = Trip.create!(name: 'Mere <3 NY', location_id: nyc.id, user_id: meredith.id)
barcelona_mere = Trip.create!(name: 'Sherry Tour', location_id: barcelona.id, user_id: meredith.id)
cdmx_jamez = Trip.create!(name: 'Mexico, te amo', location_id: cdmx.id, user_id: jamez.id)
barcelona_sadie = Trip.create!(name: 'Sherry Tour', location_id: barcelona.id, user_id: sadijia.id)

#ListItems
ListItem.create!(name: 'Noguchi Museum', description: 'museum housing Noguchi pieces featuring a sculpture garden', img_url: 'https://www.noguchi.org/sites/default/files/collection/vic1.jpg?1287004287', category: 'activity', trip_id: nyc_mere.id, user_id: meredith.id)
ListItem.create!(name: 'Sherry', description: 'gonna taste a lot of grapes', img_url: 'none rn', category: 'activity', trip_id: barcelona_mere.id, user_id: meredith.id)
ListItem.create!(name: 'UNAM Sculpture Garden', description: 'very cool', img_url: 'none rn', category: 'activity', trip_id: cdmx_jamez.id, user_id: jamez.id)