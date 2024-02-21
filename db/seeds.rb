# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating restaurants...'
epicure = { name: 'Epicure', address: '75008 Paris', category: 'french'}
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
olido = { name: 'olido', address: 'javastraat 140 amsterdam', category: 'italian' }
neni = { name: 'neni', address: 'stadionplein 8, amsterdam', category: 'japanese' }
hinata = { name: 'hinata', address: 'noordmarkt 5 amsterdam', category: 'japanese' }

[epicure, pizza_east, olido, neni, hinata].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
