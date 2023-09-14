# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0219596798", category: "belgian" }
homespun =  { name: "Homespun", address: "5 Phyllis Road, Claremont", phone_number: "0219596799", category: "italian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0219596797", category: "italian" }
fat_cactus =  { name: "fat_cactus", address: "5 Park Road, Gardens", phone_number: "0219596796", category: "french" }
tjing_tjing =  { name: "tjing_tjing", address: "40 Kloof Street, Gardens", phone_number: "0219596795", category: "japanese" }


[dishoom, homespun, pizza_east, fat_cactus, tjing_tjing].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
# puts "#{Restaurant.count} restaurants created"
puts "Finished!"