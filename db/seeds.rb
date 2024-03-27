require 'faker'
require "open-uri"

puts "Clearing all categories"
Category.destroy_all
puts "All categories gone!"

puts "Creating categories for you!"
category_1 = Category.new(name: "Transformers Studio Series")
category_1.save

category_2 = Category.create(name: "Marvel Legends")
category_2.save

category_3 = Category.create(name: "Star Wars Black Series")
category_3.save

category_4 = Category.create(name: "Power Rangers")
category_4.save

category_5 = Category.create(name: "Hot Toys")
category_5.save

category_6 = Category.create(name: "Mezco One:12")
category_6.save

category_7 = Category.create(name: "S.H. Figuarts")
category_7.save

category_8 = Category.create(name: "Hot Wheels")
category_8.save

category_9 = Category.create(name: "Gundam")
category_9.save

category_10 = Category.create(name: "Mythic Legions")
category_10.save

categories_list = [category_1, category_2, category_3, category_4, category_5, category_6, category_7, category_8, category_9, category_10]

puts "Categories are saved!"
