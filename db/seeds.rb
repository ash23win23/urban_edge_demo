# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Clear existing data
Product.destroy_all
Category.destroy_all
User.destroy_all

# Create a user
user = User.create!(
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

# Seed categories
categories = ['Electronics', 'Clothing', 'Books', 'Toys', 'Home Goods']

categories.each do |category_name|
  Category.create!(name: category_name)
end

# Seed products with associated categories and user
10.times do
  category = Category.all.sample
  Product.create!(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price(range: 10..100.0, as_string: true),
    category: category,
    user: user
  )
end
