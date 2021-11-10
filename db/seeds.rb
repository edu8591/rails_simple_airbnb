# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Flat.create!(
    name:Faker::FunnyName.two_word_name,
    address:Faker::Address.street_address,
    description:Faker::Lorem.sentence(word_count: 8),
    price_per_night:Faker::Number.between(from: 75, to: 250),
    number_of_guests:Faker::Number.between(from: 1, to: 7)
  )
end