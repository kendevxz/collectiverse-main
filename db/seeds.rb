require 'faker'
require "open-uri"

puts "All toys gone!"
puts "Clearing all categories"
Category.destroy_all
puts "All categories gone!"
puts "Clearing all posts"
Post.destroy_all
puts "All posts gone!"
puts "Clearing all users"
User.destroy_all
puts "All users gone!"

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

puts "Creating users for you!"
user_kenny = User.create(email: "kenny@gmail.com", password: "admin123", username: "BeruangRaksasa")
user_jim = User.create(email: "jim@gmail.com", password: "admin123", username: "JimboSlice")
user_nick = User.create(email: "nick@gmail.com", password: "admin123", username: "Rolexboy69")
user_jessy = User.create(email: "jessy@gmail.com", password: "admin123", username: "jessy")

users = [user_kenny, user_jim, user_nick, user_jessy]

puts "Users are saved"

puts 'Creating posts'
post1 = Post.new(title: "Best Transformers for Collectors", content: "Hello fellow Transformers enthusiasts! I'm a passionate collector and I'm looking to expand my collection. I would love to hear your recommendations for the best Transformers figures to add to my display. What are your favorite Transformers for collectors? Any particular series or characters that stand out? Please share your thoughts and suggestions! Thank you in advance.", user_id: user_kenny.id, category_id: category_1.id)
post1.save

post2 = Post.new(title: "Help Needed: Transformer Identification", content: "Hey everyone! I recently came across a Transformer figure, but I'm having trouble identifying its series and character. I've tried searching online, but no luck so far. Could you please help me identify this Transformer? I can provide pictures if necessary. Any insights or suggestions are greatly appreciated. Thanks!", user_id: user_jim.id, category_id: category_1.id)
post2.save

post3 = Post.new(title: "Looking for Transformers Merchandise", content: "Greetings, fellow Transformers fans! I'm on the hunt for some awesome Transformers merchandise to add to my collection. Whether it's t-shirts, posters, or any other cool items, I'm interested. Do you know any reliable online stores or shops where I can find a wide selection of Transformers merchandise? I would love to hear your recommendations. Thank you!", user_id: user_nick.id, category_id: category_1.id)
post3.save

post4 = Post.new(title: "Transformers Toys for Kids", content: "Hi there! I'm searching for Transformers toys suitable for young kids. My nephew is turning five soon, and he's a big Transformers fan. I want to surprise him with a cool toy that is safe and age-appropriate. Any suggestions for Transformers toys that are specifically designed for young children? Your help is much appreciated. Cheers!", user_id: user_jessy.id, category_id: category_1.id)
post4.save

post5 = Post.new(title: "Selling Rare Transformers Figures", content: "Greetings, Transformers collectors! I have a few rare Transformers figures in my collection that I'm looking to sell. These figures are highly sought after and in excellent condition. If you're interested in adding some rare gems to your collection, please let me know. I can provide more details and pictures upon request. Don't miss out on this opportunity!", user_id: user_kenny.id, category_id: category_1.id)
post5.save

post6 = Post.new(title: "Transformers Comic Book Recommendations", content: "Hello, fellow Transformers fans! I'm an avid comic book reader and I'm looking to dive into the Transformers universe through the comic medium. Could you recommend some must-read Transformers comic book series or story arcs? I'm interested in exploring the rich lore and captivating narratives. Any suggestions would be greatly appreciated. Thanks!", user_id: user_jim.id, category_id: category_1.id)
post6.save

post7 = Post.new(title: "Custom Transformers Figures", content: "Hey, Transformers community! I'm a talented artist and I specialize in customizing action figures. I would love to create unique Transformers figures for fellow fans. If you have any specific requests or ideas for custom Transformers figures, feel free to reach out to me. I'll be happy to discuss the details and bring your vision to life. Let's make some one-of-a-kind Transformers collectibles!", user_id: user_nick.id, category_id: category_1.id)
post7.save

post8 = Post.new(title: "Transformers Animated Series Discussion", content: "Hi everyone! I recently finished watching the Transformers animated series and I'm eager to discuss it with fellow fans. Which Transformers animated series is your favorite, and why? Are there any standout episodes or storylines that you'd recommend? Let's engage in a lively discussion about the Transformers animated universe. Looking forward to hearing your thoughts!", user_id: user_jessy.id, category_id: category_1.id)
post8.save

post9 = Post.new(title: "Tips for Transforming Complex Figures", content: "Greetings, Transformers enthusiasts! I need some tips and tricks for transforming complex Transformers figures. Some of the figures in my collection have intricate transformations that I find a bit challenging. If you have any techniques or advice for mastering complex transformations without damaging the figures, please share your wisdom. Your expertise will be greatly appreciated!", user_id: user_kenny.id, category_id: category_1.id)
post9.save

post10 = Post.new(title: "Transformers Movie Marathon", content: "Hey there, Transformers fans! I'm planning a Transformers movie marathon night with my friends and I want to create the ultimate viewing experience. Which Transformers movies do you recommend watching? Should we stick to the main series or include spin-offs as well? Any suggestions for snacks or themed decorations? Let's make this movie night unforgettable!", user_id: user_jim.id, category_id: category_1.id)
post10.save

post11 = Post.new(title: "Repairing Damaged Transformers Figures", content: "Hello, fellow collectors! I recently acquired a Transformers figure from a garage sale, but it has some minor damages. I'm looking for advice on repairing these damages and restoring the figure to its former glory. Are there any specific tools or techniques I should be aware of? Any recommendations for reliable repair services? Your guidance will be immensely helpful. Thank you!", user_id: user_nick.id, category_id: category_1.id)
post11.save

post12 = Post.new(title: "Transformers Convention Experience", content: "Greetings, Transformers community! I had the incredible opportunity to attend a Transformers convention recently, and it was an unforgettable experience. I wanted to share my excitement and hear about your own convention experiences. Which Transformers conventions have you attended? What were the highlights for you? Let's reminisce about the joy of immersing ourselves in the Transformers fandom!", user_id: user_jessy.id, category_id: category_1.id)
post12.save

post13 = Post.new(title: "Unleash the Marvel Magic with the Latest Legends Series!", content: "The Marvel Legends Series has been capturing the hearts of superhero enthusiasts for years, and the latest wave of figures is no exception. Whether you're a die-hard fan or a casual collector, these action-packed toys are bound to bring out the hero in you!", user_id: user_jessy.id, category_id: category_2.id)
post13.save

post14 = Post.new(title: "Iron Man Soars to New Heights in Marvel Legends' Tech-Suit Upgrade", content:"Tony Stark's genius reaches new heights with the Marvel Legends Iron Man Tech-Suit Upgrade! This highly detailed figure showcases Iron Man's latest armor, complete with intricate sculpting and a range of articulation for dynamic poses. The figure also comes with interchangeable hands, blast effects, and a display stand to showcase the armored Avenger in all his glory. Whether you're reenacting iconic battles or creating your own adventures, this Iron Man figure is a must-have for any Marvel collector.", user_id: user_jessy.id, category_id: category_2.id)
post14.save

post15 = Post.new(title: "Unleash the Dark Side with the Marvel Legends Venom Collection!", content:"Prepare to be consumed by the symbiote's darkness with the Marvel Legends Venom Collection! This thrilling assortment features a variety of Venom figures, including the classic Eddie Brock version, the monstrous Venomized Hulk, and the sleek and deadly Anti-Venom. Each figure boasts incredible detailing, multiple points of articulation, and unique accessories like interchangeable heads and weapons. Whether you're a fan of Venom's monstrous persona or prefer the anti-hero Anti-Venom, this collection offers something for everyone who craves a taste of the dark side.", user_id: user_nick.id, category_id: category_2.id)
post15.save

post16 = Post.new(title: "Join the Battle with the Marvel Legends Avengers Assemble Collection!", content:"Assemble your own team of Earth's mightiest heroes with the Marvel Legends Avengers Assemble Collection! This epic assortment features iconic characters from the Avengers roster, including Captain America, Thor, Hulk, Black Widow, and Hawkeye. Each figure is meticulously designed with movie-inspired costumes, exceptional articulation, and character-specific accessories. Recreate your favorite Avengers moments or imagine new heroic adventures as you display these figures together. With the Marvel Legends Avengers Assemble Collection, you'll be ready to save the world one pose at a time!", user_id: user_kenny.id, category_id: category_2.id)
post16.save

post17 = Post.new(title: "Experience the Mystic Arts with Marvel Legends Doctor Strange!!!", content:"Enter the realm of mysticism and magic with the Marvel Legends Doctor Strange figure! This 6-inch articulated figure captures the Sorcerer Supreme's iconic look with remarkable attention to detail. From the intricately sculpted costume to the spell-casting hands, this figure brings the enigmatic hero to life. Complete with a variety of mystical accessories, including the Eye of Agamotto and spell effect pieces, you can recreate Doctor Strange's most awe-inspiring moments from the Marvel Cinematic Universe. Whether you're a fan of the comics or the movies, this figure is a must-have addition to any Marvel Legends collection.", user_id: user_jessy.id, category_id: category_2.id)
post17.save

post18 = Post.new(title: "Unearth Hidden Secrets with the Marvel Legends X-Men Collection!", content:"Prepare to unleash your mutant powers with the Marvel Legends X-Men Collection! This incredible lineup features beloved mutants from the X-Men universe, including Wolverine, Jean Grey, Cyclops, and Magneto. Each figure comes with highly detailed sculpts, multiple points of articulation, and character-specific accessories. Whether you're reliving classic X-Men stories or creating new adventures, these figures offer endless possibilities. Don't miss your chance to join the ranks of Xavier's School for Gifted Youngsters with the Marvel Legends X-Men Collection!", user_id: user_nick.id, category_id: category_2.id)
post18.save

post19 = Post.new(title: "Embark on Epic Star Wars Adventures with the Black Series Collection!", content:"The Star Wars Black Series collection has become a staple for fans and collectors alike, offering highly detailed and meticulously crafted figures from a galaxy far, far away. Get ready to immerse yourself in the Star Wars universe with this incredible lineup of action figures!", user_id: user_kenny.id, category_id: category_3.id)
post19.save

post20 = Post.new(title: "Unleash the Force with the Black Series Luke Skywalker Jedi Knight Figure", content:"Channel your inner Jedi with the Black Series Luke Skywalker Jedi Knight figure! This stunning 6-inch figure captures the heroic Jedi in all his glory, complete with movie-accurate details and multiple points of articulation. Whether you're reenacting iconic lightsaber duels or displaying him alongside your other Star Wars figures, this Luke Skywalker figure is a must-have for any fan. With its attention to detail and high-quality craftsmanship, this figure is perfect for reliving the epic battles of the original trilogy.", user_id: user_jim.id, category_id: category_3.id)
post20.save

post21 = Post.new(title: "Join the Dark Side with the Black Series Darth Vader Figure!", content:"Embrace the power of the dark side with the Black Series Darth Vader figure! This 6-inch figure showcases the iconic Sith Lord in exquisite detail, from the intricate sculpting of his armor to the flowing cape. With its impressive range of articulation, you can recreate Vader's imposing presence and his signature lightsaber combat poses. This figure also comes with a removable helmet, revealing the scarred visage of Anakin Skywalker beneath. Whether you display him alongside other Sith Lords or as the centerpiece of your collection, this Darth Vader figure will strike fear into the hearts of Rebel scum!", user_id: user_jessy.id, category_id: category_3.id)
post21.save

post22 = Post.new(title: "Command the Clone Army with the Black Series Captain Rex Figure!", content:"Lead your own battalion of clone troopers with the Black Series Captain Rex figure! Inspired by his appearance in the animated series Star Wars: The Clone Wars, this highly detailed figure captures the essence of the fearless clone captain. With its remarkable articulation and included blaster accessories, you can recreate epic battles from the Clone Wars era or display Rex as a formidable leader in your collection. Whether you're a fan of the animated series or the wider Star Wars universe, this Captain Rex figure is a must-have for any Clone Wars enthusiast.", user_id: user_nick.id, category_id: category_3.id)
post22.save

post23 = Post.new(title: "Team up with the Black Series Mandalorian and Grogu Figures!", content:"Enter the world of The Mandalorian with the Black Series Mandalorian and Grogu figures! These intricately designed figures capture the dynamic duo from the hit Star Wars series with astonishing accuracy. The Mandalorian figure features detailed armor, a fabric cape, and a variety of weapons, while the adorable Grogu figure showcases the Child's irresistible charm. Whether you display them together or recreate their thrilling adventures, these figures are a testament to the extraordinary storytelling and beloved characters that have captivated Star Wars fans across the galaxy.", user_id: user_kenny.id, category_id: category_3.id)
post23.save

post24 = Post.new(title: "Expand Your Star Wars Collection with the Black Series Boba Fett Figure", content:"Add the legendary bounty hunter to your Star Wars collection with the Black Series Boba Fett figure! This meticulously crafted 6-inch figure captures the iconic character's rugged armor and battle-worn appearance. With its range of articulation and included blaster accessories, you can pose Boba Fett in various action-packed stances or display him alongside other notorious scum and villainy. Whether you're a fan of the original trilogy or his recent appearances in The Mandalorian, this Boba Fett figure is a must-have for any Star Wars enthusiast seeking to bring the galaxy's most feared bounty hunter to life.", user_id: user_jim.id, category_id: category_3.id)
post24.save

post25 = Post.new(title: "Unleash the Power with the Lightning Collection: Power Rangers Figures!", content:"The Power Rangers Lightning Collection has been electrifying fans with its incredible lineup of action figures, capturing the iconic heroes from various Power Rangers series. Get ready to morph into action with these highly detailed and poseable figures that will take your Power Rangers collection to the next level!", user_id: user_jim.id, category_id: category_4.id)
post25.save

post26 = Post.new(title: "Mighty Morphin Madness: The Lightning Collection Green Ranger Figure!", content:"Harness the power of the Dragonzord with the Lightning Collection Green Ranger figure! This 6-inch figure captures the mighty Tommy Oliver in his iconic Green Ranger suit, complete with accurate details and accessories. With multiple points of articulation, you can pose the Green Ranger in dynamic action stances or recreate memorable scenes from the original Mighty Morphin Power Rangers series. Whether you're a fan of Tommy's heroic journey or a collector seeking to complete your Ranger lineup, this Green Ranger figure is an essential addition to your Lightning Collection.", user_id: user_nick.id, category_id: category_4.id)
post26.save

post27 = Post.new(title: "Go Galactic with the Lightning Collection: Power Rangers In Space Figures", content:"Blast off into space with the Lightning Collection: Power Rangers In Space figures! This stellar assortment features the brave heroes from the Power Rangers In Space series, including the Red Ranger, Yellow Ranger, and more. Each figure is intricately designed, capturing the unique aesthetics of the In Space team, and comes with character-specific accessories. With their exceptional articulation, you can recreate intergalactic battles or display them alongside other Power Rangers figures. Whether you're a fan of the series or simply love the cosmic charm of Power Rangers In Space, these figures are a must-have for any collector.", user_id: user_kenny.id, category_id: category_4.id)
post27.save

post28 = Post.new(title: "Enter a Galaxy Far, Far Away with the Hot Toys Mandalorian and Grogu Set", content:"Embark on an epic journey through the Star Wars universe with the Hot Toys Mandalorian and Grogu set! This incredible set includes a highly detailed figure of the legendary bounty hunter, Din Djarin, and the adorable Child, affectionately known as Grogu. Each figure captures the essence of their on-screen counterparts, from the Mandalorian's battle-worn armor to Grogu's irresistible charm. With a wide range of accessories and exceptional articulation, you can recreate iconic moments from The Mandalorian or display this dynamic duo in your collection. Whether you're a fan of the series or a devoted Star Wars collector, the Hot Toys Mandalorian and Grogu set is a prized addition that showcases the beauty and artistry of Hot Toys figures.", user_id: user_jessy.id, category_id: category_5.id)
post28.save

post29 = Post.new(title: "Join the Avengers with the Hot Toys Iron Man Mark LXXXV Figure!", content:"Suit up as Earth's mightiest hero with the Hot Toys Iron Man Mark LXXXV figure! Inspired by Tony Stark's final appearance in Avengers: Endgame, this figure showcases the pinnacle of Iron Man's armor technology. The intricately designed suit features remarkable attention to detail, including battle-damaged effects and LED light-up functions. With its wide range of articulation and a wealth of interchangeable accessories, you can recreate Iron Man's heroic moments from the film or create your own iconic poses. Whether you're a fan of the Marvel Cinematic Universe or simply appreciate the genius of Tony Stark, this Hot Toys figure is a must-have for any Iron Man enthusiast.", user_id: user_nick.id, category_id: category_5.id)
post29.save

post30 = Post.new(title: "Unleash the Dark Knight with the Hot Toys Batman Begins Figure!", content:"Step into the shadows of Gotham City with the Hot Toys Batman Begins figure! This highly detailed figure captures the iconic portrayal of Batman by Christian Bale in the acclaimed film. From the intricately sculpted Batsuit to the impressive array of accessories, every aspect of this figure exudes the essence of the Dark Knight. With its lifelike features and numerous points of articulation, you can pose Batman in dynamic action poses or display him in a brooding stance. Whether you're a fan of Christopher Nolan's Batman trilogy or simply admire the caped crusader, this Hot Toys figure is a must-have centerpiece for any collection.", user_id: user_kenny.id, category_id: category_5.id)
post30.save

post31 = Post.new(title: "Elevate Your Collection with Mezco One:12 Collective Figures!", content:"Mezco One:12 Collective figures have revolutionized the world of action figures with their impeccable design and meticulous attention to detail. These highly articulated and intricately crafted figures offer an immersive experience for collectors. Prepare to enhance your collection with these extraordinary Mezco One:12 figures!", user_id: user_jessy.id, category_id: category_6.id)
post31.save

post32 = Post.new(title: "Embrace the Heroic Legacy with Mezco One:12 Collective Batman Figure!", content:"Immerse yourself in the dark and gritty world of Gotham City with the Mezco One:12 Collective Batman figure! This exceptional figure captures the essence of the Caped Crusader with incredible precision. From the detailed sculpting of the Batsuit to the vast array of interchangeable accessories, every aspect of this figure showcases Batman's iconic presence. With its extensive articulation, you can pose Batman in a myriad of action-packed stances or display him in a brooding pose. Whether you're a fan of the Dark Knight's comic book adventures or mesmerized by his on-screen appearances, the Mezco One:12 Collective Batman figure is a must-have centerpiece for any Batman enthusiast.", user_id: user_kenny.id, category_id: category_6.id)
post32.save

post33 = Post.new(title: "Explore the Supernatural with Mezco One:12 Collective Hellboy Figure!", content:"Delve into the supernatural world with the Mezco One:12 Collective Hellboy figure! This stunning figure brings Mike Mignola's iconic character to life with remarkable attention to detail. From the finely sculpted facial features to the intricately designed trench coat, every element captures Hellboy's unique persona. With a wide range of accessories and an impressive level of articulation, you can recreate Hellboy's daring adventures or display him in a captivating pose. Whether you're a fan of the comics or a collector seeking an extraordinary figure, the Mezco One:12 Collective Hellboy figure is a masterpiece that pays homage to the beloved paranormal investigator.", user_id: user_jim.id, category_id: category_6.id)
post33.save

post34 = Post.new(title: "Experience the Artistry of S.H.Figuarts Figures!", content:"S.H.Figuarts has established itself as a leading brand in the world of action figures, renowned for its exceptional quality and attention to detail. These highly articulated and beautifully sculpted figures bring beloved characters to life with remarkable accuracy. Prepare to elevate your collection with these extraordinary S.H.Figuarts figures!", user_id: user_jessy.id, category_id: category_7.id)
post34.save

post35 = Post.new(title: "Unleash the Power of S.H.Figuarts Dragon Ball Z Figures!", content:"Step into the world of Dragon Ball Z with S.H.Figuarts figures! These meticulously crafted figures capture the essence of your favorite characters from the iconic anime series. From Goku and Vegeta to Frieza and Cell, each figure boasts impressive articulation, allowing you to recreate dynamic action scenes and iconic poses. With their stunning attention to detail and a wide range of accessories, S.H.Figuarts Dragon Ball Z figures are a must-have for any Dragon Ball fan or collector. Whether you're reliving the legendary battles or displaying them in your collection, these figures will bring the power of the Dragon Ball universe to life.", user_id: user_kenny.id, category_id: category_7.id)
post35.save

post36 = Post.new(title: "Join the Marvel Universe with S.H.Figuarts Avengers Figures!", content:"Assemble your own team of Avengers with S.H.Figuarts figures! These extraordinary figures capture the mighty heroes from the Marvel Universe with astonishing accuracy. From Iron Man and Captain America to Black Widow and Thor, each figure features impeccable sculpting and intricate detailing. With their exceptional articulation and a wealth of accessories, you can pose your favorite Avengers in dynamic action scenes or display them in heroic stances. Whether you're a fan of the Marvel Cinematic Universe or a collector seeking to bring the iconic heroes into your collection, S.H.Figuarts Avengers figures are a testament to the artistry and craftsmanship of these beloved characters.", user_id: user_jim.id, category_id: category_7.id)
post36.save

post37 = Post.new(title: "Hot Wheels: Small Cars, Big Laughs!", content:"Get ready for some wheel-y funny moments with Hot Wheels! These iconic toy cars have been a source of endless entertainment for kids and adults alike. Join us as we take a joyride through the world of Hot Wheels and discover the hilarious side of these miniature speedsters!", user_id: user_kenny.id, category_id: category_8.id)
post37.save

post38 = Post.new(title: "Hot Wheels Mishaps: When Cars Have a Mind of Their Own!", content:"Ever wondered what happens when Hot Wheels cars develop a mischievous streak? Buckle up and get ready for some laugh-out-loud moments as we explore the unpredictable world of Hot Wheels mishaps! From unexpected jumps and crazy spins to wild crashes and surprising detours, these miniature cars seem to have a mind of their own. It's like they're on a mission to create chaos and leave us in fits of laughter. So, grab your favorite Hot Wheels track, set up some ramps, and prepare to witness the hilarious antics of these rebellious little vehicles. Just remember, when Hot Wheels go rogue, the only thing we can do is sit back, enjoy the ride, and laugh along!", user_id: user_jessy.id, category_id: category_8.id)
post38.save

post39 = Post.new(title: "Hot Wheels Comedy Club: The Stand-Up Acts of Speedy Cars!", content:"Who knew that Hot Wheels cars had a secret talent for stand-up comedy? Prepare to be entertained as these speedy little cars take the stage and deliver their best punchlines! From one-liners about racing stripes to hilarious anecdotes about life in the fast lane, these miniature comedians will leave you in stitches. Watch as they zoom across the track, delivering their jokes with impeccable timing and high-speed delivery. You'll be laughing so hard that you might just lose track of time. So, grab a front-row seat at the Hot Wheels Comedy Club and get ready for a night filled with laughter and side-splitting humor. After all, even cars need to have a good laugh every now and then!", user_id: user_jessy.id, category_id: category_8.id)
post39.save

post40 = Post.new(title: "Hot Wheels Pranks: When Toy Cars Gooo Rooooogue!", content:"It's time for some Hot Wheels mischief! Join us on a hilarious journey through the world of Hot Wheels pranks, where these tiny cars become the ultimate pranksters. From sneaking up behind unsuspecting action figures and giving them a speedy scare to setting up elaborate tracks that lead to unexpected surprises, these miniature vehicles know how to pull off a prank like no other. Watch as they zip through loops, trigger traps, and leave a trail of laughter in their wake. Just when you think you've outsmarted them, they'll come up with a prank that will have you rolling on the floor laughing. So, get ready to be pranked by these pint-sized troublemakers and embrace the joy of Hot Wheels hilarity!", user_id: user_nick.id, category_id: category_8.id)
post40.save

post41 = Post.new(title: "Gundam Toys: When Robots Embrace Their Quirky Side!", content:"Get ready to embark on a hilarious adventure with Gundam toys! These mighty robots are known for their epic battles and serious demeanor, but what happens when they let loose and embrace their quirky side? Join us as we explore the comical and lighthearted moments of these iconic mecha figures and discover a whole new side to Gundam!", user_id: user_jim.id, category_id: category_9.id)
post41.save

post42 = Post.new(title: "Gundam Dance-Off: When Mechas Bust a Move!", content:"Who says robots can't dance? Prepare for a toe-tapping extravaganza as Gundam toys take center stage for an epic dance-off! Watch in awe as these towering mechas break out their best moves, from disco spins and robot shuffles to moonwalks and breakdancing. The precision of their steps and the grace of their movements will leave you in awe. It's a battle of rhythm and style, where the winner takes all the applause and laughter. So, put on your dancing shoes and prepare to witness the unexpected talents of Gundam toys as they groove and bust a move like never before!", user_id: user_nick.id, category_id: category_9.id)
post42.save

post43 = Post.new(title: "Gundam Fashion Fiasco: When Robots Rock Outrageous Outfits!", content:"When it comes to fashion, Gundam toys aren't afraid to push the boundaries and rock some truly outrageous outfits! Get ready for a fashion show like no other as these mechanical marvels strut their stuff in the most daring and flamboyant ensembles. From flashy sequins and feather boas to tiaras and tutus, there's no limit to their sartorial experimentation. Whether they're trying to impress the judges or simply expressing their unique style, these Gundam fashionistas will have you rolling on the floor with laughter. So, grab your front-row seat and prepare to witness a runway extravaganza that will leave you both amazed and amused!", user_id: user_kenny.id, category_id: category_9.id)
post43.save

post44 = Post.new(title: "Gundam Prank Wars: When Robots Let Loooose!!!", content:"It's time for some mischievous fun with Gundam toys as they engage in an epic prank war! Watch as these formidable robots become the ultimate tricksters, setting up hilarious traps and executing well-planned pranks. From squirting water guns hidden in their arms to sneaking up behind unsuspecting figures and surprising them with a tickle attack, these Gundam pranksters know how to keep everyone on their toes. Prepare for side-splitting laughter as they unleash a wave of silliness and mischief. Just when you think you're safe, they'll come up with a prank that will have you laughing until your circuits fry. So, get ready to be pranked by these mechanical masterminds and join in the laughter as Gundam toys let loose in the most unexpected and hilarious ways!", user_id: user_jessy.id, category_id: category_9.id)
post44.save

post45 = Post.new(title: "Mythic Legions: Unleash the Epic Laughter!", content:"Prepare for a whimsical adventure with Mythic Legions toys! These fantastical figures are known for their epic battles and mythical tales, but what happens when they embrace their funny side? Join us as we journey into the hilarious and unexpected moments of these extraordinary action figures and discover a whole new level of laughter in the realm of Mythic Legions!", user_id: user_jessy.id, category_id: category_10.id)
post45.save

post46 = Post.new(title: "Mythic Legions Goof Off: When Heroes Embrace Silly Antics!", content:"Who said heroes can't have a little fun? Get ready for a side-splitting experience as Mythic Legions figures embrace their silly side and indulge in hilarious antics! Watch in amazement as these mighty warriors throw their swords aside and engage in epic pillow fights. Witness their attempts at juggling potions, leading to comical mishaps and colorful explosions. From exaggerated battle cries to outrageous dance-offs, these heroes know how to keep the laughter flowing. So, prepare to witness Mythic Legions characters stepping out of their epic battles and into a realm of laughter and lightheartedness!", user_id: user_kenny.id, category_id: category_10.id)
post46.save

post47 = Post.new(title: "Mythic Legions' Misadventures: When Fantasy Worlds Go Haywire!", content:"Step into a world of comedic chaos as the Mythic Legions figures find themselves in the midst of hilarious misadventures! Watch in amusement as they navigate treacherous dungeons, only to encounter squirrels with an appetite for armor straps. Witness their attempts to tame mythical beasts, resulting in unexpected rides and wild escapades. From failed attempts at magic spells to humorous encounters with mischievous fairies, these heroes find themselves in one uproarious situation after another. So, fasten your seatbelt and prepare to join the Mythic Legions' misadventures for a journey that will have you laughing out loud!", user_id: user_nick.id, category_id: category_10.id)
post47.save

post48 = Post.new(title: "Mythic Legions' Stand-Up Comedy: When Legends Become Jokesters!", content:"Prepare to have your funny bone tickled as the Mythic Legions figures take the stage for a night of stand-up comedy! Watch in awe as these legendary warriors trade their weapons for microphones and deliver hilarious punchlines with impeccable timing. From clever one-liners about enchanted armor to witty anecdotes about battles with mischievous goblins, their comedic talents will leave you in stitches. Whether they're sharing funny tales of dragon-slaying mishaps or poking fun at their fellow mythical creatures, their humor will transport you to a realm of laughter and joy. So, grab a front-row seat and get ready to enjoy a night of comedy gold with the Mythic Legions' finest jokesters!", user_id: user_jim.id, category_id: category_10.id)
post48.save

puts 'Posts are saved'

puts 'Create comments for transformers post'
comment1 = Comment.new(content: "Great post! I highly recommend the Masterpiece series for collectors. The attention to detail and quality are exceptional.", post_id: post1.id, user_id: user_kenny.id)
comment1.save

comment2 = Comment.new(content: "I love a good mystery! Please share the pictures of the Transformer you need help identifying. We'll do our best to assist you.", post_id: post2.id, user_id: user_jim.id)
comment2.save

comment3 = Comment.new(content: "You should check out BigBadToyStore and Entertainment Earth. They have a fantastic selection of Transformers merchandise.", post_id: post3.id, user_id: user_nick.id)
comment3.save

comment4 = Comment.new(content: "For young kids, the Rescue Bots series is perfect. They are fun, durable, and designed with safety in mind.", post_id: post4.id, user_id: user_jessy.id)
comment4.save

comment5 = Comment.new(content: "I'm interested in the rare Transformers figures you're selling. Could you please provide more information and pictures?", post_id: post5.id, user_id: user_kenny.id)
comment5.save

comment6 = Comment.new(content: "The IDW Transformers comic series is a must-read! It delves deep into the Transformers mythology and offers gripping storylines.", post_id: post6.id, user_id: user_jim.id)
comment6.save

comment7 = Comment.new(content: "I've been wanting a custom Transformers figure for a while now. Let's discuss the details of what I have in mind.", post_id: post7.id, user_id: user_nick.id)
comment7.save

comment8 = Comment.new(content: "The Transformers Prime animated series is phenomenal! The character development and action sequences are top-notch.", post_id: post8.id, user_id: user_jessy.id)
comment8.save

comment9 = Comment.new(content: "When it comes to complex transformations, patience is key! Don't rush and follow the instructions step by step.", post_id: post9.id, user_id: user_kenny.id)
comment9.save

comment10 = Comment.new(content: "I recommend watching the main series first and then exploring the spin-offs. As for snacks, you can't go wrong with energon cubes!", post_id: post10.id, user_id: user_jim.id)
comment10.save

comment11 = Comment.new(content: "You can try using epoxy putty for small repairs. Just make sure to follow the instructions carefully.", post_id: post11.id, user_id: user_nick.id)
comment11.save

comment12 = Comment.new(content: "I attended BotCon a few years ago, and it was an amazing experience! Meeting fellow fans and getting autographs from the voice actors was a dream come true.", post_id: post12.id, user_id: user_jessy.id)
comment12.save

puts 'Created comments for transformers post'

puts 'Finished with all seeds executions!'
