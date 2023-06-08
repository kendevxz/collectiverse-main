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

puts "Creating 8 categories for you!"
user_category_1 = Category.create(name: "Transformers")
user_category_2 = Category.create(name: "Star wars")
user_category_3 = Category.create(name: "Warhammer")
user_category_4 = Category.create(name: "Superman")
user_category_5 = Category.create(name: "Batman")
user_category_6 = Category.create(name: "Spiderman")
user_category_7 = Category.create(name: "Wonder Woman")
user_category_8 = Category.create(name: "Avengers")

categories_list = [user_category_2, user_category_3, user_category_4, user_category_5, user_category_6, user_category_7, user_category_8]

user_category_1.save!
user_category_2.save!
user_category_3.save!
user_category_4.save!
user_category_5.save!
user_category_6.save!
user_category_7.save!
user_category_8.save!

puts "Categories are saved!"

puts "Creating 4 users for you!"
user_kenny = User.create(email: "kenny@gmail.com", password: "admin123", username: "BeruangRaksasa")
user_jim = User.create(email: "jim@gmail.com", password: "admin123", username: "JimboSlice")
user_nick = User.create(email: "nick@gmail.com", password: "admin123", username: "Rolexboy69")
user_mary = User.create(email: "mary@gmail.com", password: "admin123", username: "malopii")

users = [user_kenny, user_jim, user_nick, user_mary]

puts "Users are saved"

puts "Creating 10 toys for you!"
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

puts "Toy's created"

puts 'Creating 12 realistic posts'
post1 = Post.new(title: "Best Transformers for Collectors", content: "Hello fellow Transformers enthusiasts! I'm a passionate collector and I'm looking to expand my collection. I would love to hear your recommendations for the best Transformers figures to add to my display. What are your favorite Transformers for collectors? Any particular series or characters that stand out? Please share your thoughts and suggestions! Thank you in advance.", user_id: user_kenny.id, category_id: user_category_1.id)
post1.save

post2 = Post.new(title: "Help Needed: Transformer Identification", content: "Hey everyone! I recently came across a Transformer figure, but I'm having trouble identifying its series and character. I've tried searching online, but no luck so far. Could you please help me identify this Transformer? I can provide pictures if necessary. Any insights or suggestions are greatly appreciated. Thanks!", user_id: user_jim.id, category_id: user_category_1.id)
post2.save

post3 = Post.new(title: "Looking for Transformers Merchandise", content: "Greetings, fellow Transformers fans! I'm on the hunt for some awesome Transformers merchandise to add to my collection. Whether it's t-shirts, posters, or any other cool items, I'm interested. Do you know any reliable online stores or shops where I can find a wide selection of Transformers merchandise? I would love to hear your recommendations. Thank you!", user_id: user_nick.id, category_id: user_category_1.id)
post3.save

post4 = Post.new(title: "Transformers Toys for Kids", content: "Hi there! I'm searching for Transformers toys suitable for young kids. My nephew is turning five soon, and he's a big Transformers fan. I want to surprise him with a cool toy that is safe and age-appropriate. Any suggestions for Transformers toys that are specifically designed for young children? Your help is much appreciated. Cheers!", user_id: user_mary.id, category_id: user_category_1.id)
post4.save

post5 = Post.new(title: "Selling Rare Transformers Figures", content: "Greetings, Transformers collectors! I have a few rare Transformers figures in my collection that I'm looking to sell. These figures are highly sought after and in excellent condition. If you're interested in adding some rare gems to your collection, please let me know. I can provide more details and pictures upon request. Don't miss out on this opportunity!", user_id: user_kenny.id, category_id: user_category_1.id)
post5.save

post6 = Post.new(title: "Transformers Comic Book Recommendations", content: "Hello, fellow Transformers fans! I'm an avid comic book reader and I'm looking to dive into the Transformers universe through the comic medium. Could you recommend some must-read Transformers comic book series or story arcs? I'm interested in exploring the rich lore and captivating narratives. Any suggestions would be greatly appreciated. Thanks!", user_id: user_jim.id, category_id: user_category_1.id)
post6.save

post7 = Post.new(title: "Custom Transformers Figures", content: "Hey, Transformers community! I'm a talented artist and I specialize in customizing action figures. I would love to create unique Transformers figures for fellow fans. If you have any specific requests or ideas for custom Transformers figures, feel free to reach out to me. I'll be happy to discuss the details and bring your vision to life. Let's make some one-of-a-kind Transformers collectibles!", user_id: user_nick.id, category_id: user_category_1.id)
post7.save

post8 = Post.new(title: "Transformers Animated Series Discussion", content: "Hi everyone! I recently finished watching the Transformers animated series and I'm eager to discuss it with fellow fans. Which Transformers animated series is your favorite, and why? Are there any standout episodes or storylines that you'd recommend? Let's engage in a lively discussion about the Transformers animated universe. Looking forward to hearing your thoughts!", user_id: user_mary.id, category_id: user_category_1.id)
post8.save

post9 = Post.new(title: "Tips for Transforming Complex Figures", content: "Greetings, Transformers enthusiasts! I need some tips and tricks for transforming complex Transformers figures. Some of the figures in my collection have intricate transformations that I find a bit challenging. If you have any techniques or advice for mastering complex transformations without damaging the figures, please share your wisdom. Your expertise will be greatly appreciated!", user_id: user_kenny.id, category_id: user_category_1.id)
post9.save

post10 = Post.new(title: "Transformers Movie Marathon", content: "Hey there, Transformers fans! I'm planning a Transformers movie marathon night with my friends and I want to create the ultimate viewing experience. Which Transformers movies do you recommend watching? Should we stick to the main series or include spin-offs as well? Any suggestions for snacks or themed decorations? Let's make this movie night unforgettable!", user_id: user_jim.id, category_id: user_category_1.id)
post10.save

post11 = Post.new(title: "Repairing Damaged Transformers Figures", content: "Hello, fellow collectors! I recently acquired a Transformers figure from a garage sale, but it has some minor damages. I'm looking for advice on repairing these damages and restoring the figure to its former glory. Are there any specific tools or techniques I should be aware of? Any recommendations for reliable repair services? Your guidance will be immensely helpful. Thank you!", user_id: user_nick.id, category_id: user_category_1.id)
post11.save

post12 = Post.new(title: "Transformers Convention Experience", content: "Greetings, Transformers community! I had the incredible opportunity to attend a Transformers convention recently, and it was an unforgettable experience. I wanted to share my excitement and hear about your own convention experiences. Which Transformers conventions have you attended? What were the highlights for you? Let's reminisce about the joy of immersing ourselves in the Transformers fandom!", user_id: user_mary.id, category_id: user_category_1.id)
post12.save
puts 'Posts are saved'

puts 'Creating 50 posts faker posts (transformers excluded for the demo)'
50.times do
  post_general = Post.new(
    title:        Faker::Lorem.sentence(word_count: 3),
    content:      Faker::Lorem.paragraph(sentence_count: 12, supplemental: true),
    category_id:  categories_list.sample.id,
    user_id:      users.sample.id
  )
  post_general.save!
end
puts 'Posts are created'

puts 'Create 12 comments for the transformers post'
comment1 = Comment.new(content: "Great post! I highly recommend the Masterpiece series for collectors. The attention to detail and quality are exceptional.", post_id: post1.id, user_id: user_kenny.id)
comment1.save

comment2 = Comment.new(content: "I love a good mystery! Please share the pictures of the Transformer you need help identifying. We'll do our best to assist you.", post_id: post2.id, user_id: user_jim.id)
comment2.save

comment3 = Comment.new(content: "You should check out BigBadToyStore and Entertainment Earth. They have a fantastic selection of Transformers merchandise.", post_id: post3.id, user_id: user_nick.id)
comment3.save

comment4 = Comment.new(content: "For young kids, the Rescue Bots series is perfect. They are fun, durable, and designed with safety in mind.", post_id: post4.id, user_id: user_mary.id)
comment4.save

comment5 = Comment.new(content: "I'm interested in the rare Transformers figures you're selling. Could you please provide more information and pictures?", post_id: post5.id, user_id: user_kenny.id)
comment5.save

comment6 = Comment.new(content: "The IDW Transformers comic series is a must-read! It delves deep into the Transformers mythology and offers gripping storylines.", post_id: post6.id, user_id: user_jim.id)
comment6.save

comment7 = Comment.new(content: "I've been wanting a custom Transformers figure for a while now. Let's discuss the details of what I have in mind.", post_id: post7.id, user_id: user_nick.id)
comment7.save

comment8 = Comment.new(content: "The Transformers Prime animated series is phenomenal! The character development and action sequences are top-notch.", post_id: post8.id, user_id: user_mary.id)
comment8.save

comment9 = Comment.new(content: "When it comes to complex transformations, patience is key! Don't rush and follow the instructions step by step.", post_id: post9.id, user_id: user_kenny.id)
comment9.save

comment10 = Comment.new(content: "I recommend watching the main series first and then exploring the spin-offs. As for snacks, you can't go wrong with energon cubes!", post_id: post10.id, user_id: user_jim.id)
comment10.save

comment11 = Comment.new(content: "You can try using epoxy putty for small repairs. Just make sure to follow the instructions carefully.", post_id: post11.id, user_id: user_nick.id)
comment11.save

comment12 = Comment.new(content: "I attended BotCon a few years ago, and it was an amazing experience! Meeting fellow fans and getting autographs from the voice actors was a dream come true.", post_id: post12.id, user_id: user_mary.id)
comment12.save

puts 'Created 12 comments for the transformers post'

# puts 'Creating 50 comments'
# posts_total = Post.all

# 50.times do
#   comment = Comment.new(
#     content:  Faker::Lorem.paragraph(sentence_count: 4, supplemental: true),
#     post_id:  posts_total.sample.id,
#     user_id:  users.sample.id
#   )
#   comment.save!
# end
# puts 'Created 50 comments!'
# comment_total = Comment.all

# puts 'Creating 50 subcomment'
# 50.times do
#   subcomment = Subcomment.new(
#     content:      Faker::Lorem.paragraph(sentence_count: 4, supplemental: true),
#     user_id:      users.sample.id,
#     comment_id:   comment_total.sample.id
#   )
#   subcomment.save!
# end
# puts 'Created 50 subcomments'

puts 'Finished with all seeds executions!'
