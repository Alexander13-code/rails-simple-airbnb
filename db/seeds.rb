# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all

Flat.create!(
  name: 'Spacious Garden Flat London',
  address: '10 Clifton Gardens London',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

20.times do
  Flat.create!(
    name: Faker::Address.street_name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.review,
    price_per_night: rand(50..300),
    number_of_guests: rand(2..10)
  )
end

puts "les apparts c'est good !"
