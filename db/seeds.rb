# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
# 5.times do
#   Listing.create(
#     name: Faker::Lorem.sentence(word_count: 3),
#     address: Faker::Address.full_address,
#     # description: Faker::Lorem.paragraph(sentence_count: 2),
#     price: rand(1..650),
#     capacity: rand(1..8),
#     listing_type: "shared",
#     user_id: user.id
#   )
# end

# Test user creation - 2 dummy users
# renting_tender = User.create(
#     password: "rentingtender",
#     first_name: "Renting",
#     last_name: "Tender",
#     birthdate: Date.new(1990, 12, 12),
#     email: 'renting.tender@gmail.com',
#     gender: "Male",
#     profile_picture: 'https://unsplash.com/photos/jFCViYFYcus'
# )
# ben_dover = User.create(
#     password: "bendover",
#     first_name: "Ben",
#     last_name: "Dover",
#     birthdate: Date.new(1990, 02, 01),
#     email: 'ben.dover@gmail.com',
#     gender: "Diverse",
#     # profile_picture: 'https://unsplash.com/photos/jFCViYFYcus'
# )
# # Listings creation - 5 dummy data
#  Listing.create(
#     name: 'Snuggabear - Tent',
#     address: 'Untere Bahnhofstraße 6, 77709 Wolfach',
#     price: rand(100..650),
#     capacity: rand(1..8),
#     listing_type: 'Tent',
#     user_id: renting_tender.id,
#     # photos: %w[https://unsplash.com/photos/jFCViYFYcus https://unsplash.com/photos/-4kwrnRrk-E https://unsplash.com/photos/wY7AeHia2v4]
#   )
# Listing.create(
#     name: 'Fuzzy Wuzzy - Cabin',
#     address: 'Am Elbsee 3, 87648 Aitrang',
#     price: rand(100..650),
#     capacity: rand(1..8),
#     listing_type: 'Cabin',
#     user_id: renting_tender.id,
#     # photos: %w[https://unsplash.com/photos/jFCViYFYcus https://unsplash.com/photos/-4kwrnRrk-E https://unsplash.com/photos/wY7AeHia2v4]
# )
# Listing.create(
#     name: 'Mr. Hugglesworth - Cottage',
#     address: 'Lützowpl. 17, 10785 Berlin',
#     price: rand(100..650),
#     capacity: rand(1..8),
#     listing_type: 'Cottage',
#     user_id: renting_tender.id,
#     # photos: %w[https://unsplash.com/photos/jFCViYFYcus https://unsplash.com/photos/-4kwrnRrk-E https://unsplash.com/photos/wY7AeHia2v4]
# )
# Listing.create(
#     name: 'Beary Potter - Shanty',
#     address: 'Düsternstraße 1, 20355 Hamburg',
#     price: rand(100..650),
#     capacity: rand(1..8),
#     listing_type: "Shanty",
#     user_id: ben_dover.id,
#     # photos: %w[https://unsplash.com/photos/jFCViYFYcus https://unsplash.com/photos/-4kwrnRrk-E https://unsplash.com/photos/wY7AeHia2v4]
# )
# Listing.create(
#     name: 'Cuddlebug - Booth',
#     address: 'Bayerstraße 7, 80335 München',
#     price: rand(100..650),
#     capacity: rand(1..8),
#     listing_type: "Booth",
#     user_id: ben_dover.id,
#     # photos: %w[https://unsplash.com/photos/jFCViYFYcus https://unsplash.com/photos/-4kwrnRrk-E https://unsplash.com/photos/wY7AeHia2v4]
# )
#
