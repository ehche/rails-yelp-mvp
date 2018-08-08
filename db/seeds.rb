# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

Restaurant.create!(
  name: "Red Rooster",
  address: "123 Fake St.",
  phone_number: "123-456-7890",
  category: "belgian"
)

new_review = Review.new(
  content: "very french"
  rating: 5
)


new_review.restaurant = guillaume
new_review.save!
