require 'faker'

puts "Clearing all toys"
Toy.destroy_all
puts "All toys gone!"
puts "Clearing all users"
User.destroy_all
puts "All users gone!"
puts "Clearing all categories"
Category.destroy_all
puts "All categories gone!"
puts "Clearing all posts"
Post.destroy_all
puts "All posts gone!"

puts "Creating 'category' for you!"
user_category_1 = Category.create(name: "Transformers")
user_category_2 = Category.create(name: "Star wars")
user_category_3 = Category.create(name: "Warhammer")
user_category_4 = Category.create(name: "Superman")
user_category_5 = Category.create(name: "Batman")
user_category_6 = Category.create(name: "Spiderman")
user_category_7 = Category.create(name: "Wonder Woman")
user_category_8 = Category.create(name: "Avengers")

categories_list = [user_category_1, user_category_2, user_category_3, user_category_4, user_category_5, user_category_6, user_category_7, user_category_8]

user_category_1.save!
user_category_2.save!
user_category_3.save!
user_category_4.save!
user_category_5.save!
user_category_6.save!
user_category_7.save!
user_category_8.save!


puts "Creating 'user' for you!"
user_kenny = User.create(email: "kenny@gmail.com", password: "admin123", username: "BeruangRaksasa")
user_jim = User.create(email: "jim@gmail.com", password: "admin123", username: "JimboSlice")
user_nick = User.create(email: "nick@gmail.com", password: "admin123", username: "Rolexboy69")
user_mary = User.create(email: "mary@gmail.com", password: "admin123", username: "malopii")

users = [user_kenny, user_jim, user_nick, user_mary]

puts "'User' created"
puts "Creating 'toys' for you!"
toy1 = Toy.new(name: "Funko POP! Chewbacca", where_to_buy: "www.paypal.com/donate", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_2.id)
toy1.save!

toy2 = Toy.new(name: "Studio Series Bumblebee", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_1.id)
toy2.save!

toy3 = Toy.new(name: "Hot Toys Superman", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_6.id)
toy3.save!

toy4 = Toy.new(name: "Prime1 Optimus Prime", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_1.id)
toy4.save!

toy5 = Toy.new(name: "Studio Series Jetfire", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_1.id)
toy5.save!

toy6 = Toy.new(name: "Warhammer 40000 - Adeptus Sororitas Battle Sisters Squad", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_3.id)
toy6.save!

toy7 = Toy.new(name: "Warhammer 40000 - Combat Patrol: Adepta Sororitas", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_3.id)
toy7.save!

toy8 = Toy.new(name: "Warhammer Age Of Sigmar Battleforce Daughters of Khaine", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_3.id)
toy8.save!

toy9 = Toy.new(name: "Warhammer 40k Paint + tools Set", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_3.id)
toy9.save!

toy10 = Toy.new(name: "Warhammer 40K SMH 2023 Blood Angels Collection Two", release_date: Faker::Date.between(from: '2023-06-23', to: '2024-06-23'), category_id: user_category_3.id)
toy10.save!

puts "'Toy's created"

puts 'Creating 10 Starwars posts'
10.times do
  post = Post.new(
    title:        Faker::Lorem.sentence(word_count: 3),
    content:      "#{Faker::Movies::StarWars.wookiee_sentence} #{Faker::Lorem.paragraph(sentence_count: 12, supplemental: true)}",
    category_id:  user_category_2.id,
    user_id:      users.sample.id
  )
  post.save!
end
puts 'Finished!'

puts 'Creating 50 posts'
50.times do
  post_general = Post.new(
    title:        Faker::Lorem.sentence(word_count: 3),
    content:      Faker::Lorem.paragraph(sentence_count: 12, supplemental: true),
    category_id:  categories_list.sample.id,
    user_id:      users.sample.id
  )
  post_general.save!
end
puts 'Finished!'
puts 'Creating 50 comment'


posts_total = Post.all


50.times do
  comment = Comment.new(
    content:  Faker::Lorem.paragraph(sentence_count: 4, supplemental: true),
    post_id:  posts_total.sample.id,
    user_id:  users.sample.id
  )
  comment.save!
end
puts 'Finished!'
comment_total = Comment.all

puts 'Creating 50 subcomment'
50.times do
  subcomment = Subcomment.new(
    content:      Faker::Lorem.paragraph(sentence_count: 4, supplemental: true),
    user_id:      users.sample.id,
    comment_id:   comment_total.sample.id
  )
  subcomment.save!
end
puts 'Finished with all seeds executions!'
