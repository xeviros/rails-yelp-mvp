# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Review.destroy_all

puts "Cleaning database..."

puts "Creating elements..."

category = ["chinese", "italian", "japanese", "french", "belgian"]
phone_number = [ "0987654321", "1234567890" ]
names = [ "Xavi's", "Santiago's", "Jo's", "Gus's", "Ollie's" ]
restaurants = []

10.times do
  restaurants << Restaurant.create!(name: names.sample, address: "Barcelona", phone_number: phone_number.sample, category: category.sample)
end

puts "10 restaurants created..."

rating = [ 0, 1, 2, 3, 4, 5 ]

20.times do
  Review.create!(rating: rating.sample, content: "This is a great review!", restaurant_id: restaurants.sample.id)
end

puts "20 reviews created..."

puts "Done"
