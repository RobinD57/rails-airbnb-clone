# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Listing.create(
    name: Faker::Lorem.sentence(word_count: 3),
    address: Faker::Address.full_address,
    # description: Faker::Lorem.paragraph(sentence_count: 2),
    price: rand(1..650),
    capacity: rand(1..8),
    type: "shared"
  )
end
