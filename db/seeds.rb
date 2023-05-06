require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database"
Business.destroy_all
Deal.destroy_all
Recipe.destroy_all
User.destroy_all

puts "Creating database..."

###########################################################################
# Users  - NOTE: admin is user 1
# id, username, password, email

User.create(id: 1, username: "admin", password: "123456", email: "admin@example.com")

User.create(id: 2, username: "crabby", password: "123456", email: "crabby@example.com")

User.create(id: 3, username: "imogen", password: "123456", email: "imogen@example.com")

User.create(id: 4, username: "jasper7", password: "123456", email: "jasper7@example.com")

###########################################################################
# Businesses
# id, name, street, suburb, state, postcode

Business.create(id: 1, name: "Woolworths Abbotsford", street: "313 Victoria St", suburb: "Abbotsford", state: "VIC", postcode: 3067)

Business.create(id: 2, name: "Coles Richmond Traders", street: "Cnr Church St and Bridge Rd", suburb: "Richmond", state: "VIC", postcode: 3121)

Business.create(id: 3, name: "Coles Richmond Icon", street: "150/160 Swan St", suburb: "Richmond", state: "VIC", postcode: 3121)

Business.create(id: 4, name: "IGA XPress Exhibition Street", street: "333 Exhibition St", suburb: "South Melbourne", state: "VIC", postcode: 3000)

###########################################################################
# Deals
deal_1 = Deal.create(name: "Chicken Drumsticks", category: "Meat", price: "1.99", description: "Found a great deal on chicken drumsticks for $1.99/kg at Woolworths Abbotsford!", start_date: "2023-05-03", end_date: "2023-05-10", user_id: 2, submission_date: "2023-05-03", url: "https://www.woolworths.com.au/shop/productdetails/23208/chicken-legs-drumsticks")
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195893/deals/brown-onions_mco5nt.jpg')
deal_1.image.attach(io: file, filename: 'chicken-drumsticks.jpg')
puts "Attached image: #{deal_1.image.attached?}"
deal_1.save

deal_2 = Deal.create(name: "White Potato", category: "Vegetable", price: "0.99", description: "Stock up on white potatoes for only $0.99/kg at Queen Victoria Market in Melbourne!", start_date: "2023-05-01", end_date: "2023-05-07", user_id: 2, submission_date: "2023-05-03")
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195888/deals/white-potatoes_pi84ib.jpg')
deal_2.image.attach(io: file, filename: 'white-potato.jpg')
deal_2.save

deal_3 = Deal.create(name: "Lean Beef Mince", category: "Meat", price: "5.99", description: "Found lean beef mince on sale for $5.99/kg at Coles Richmond Icon!", start_date: "2023-05-03", end_date: "2023-05-10", user_id: 3, submission_date: "2023-05-03", url: "https://www.coles.com.au/product/coles-beef-4-star-lean-mince-500g-8850450")
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195888/deals/beef-mince_q6urye.jpg')
deal_3.image.attach(io: file, filename: 'lean-beef-mince.jpg')
deal_3.save

deal_4 = Deal.create(name: "Monterey Jack Cheese", category: "Dairy", price: "0.97", description: "Found a great deal on Monterey Jack cheese for $0.97 at Costco Docklands", start_date: "2023-05-02", end_date: "2023-05-08", user_id: 2, submission_date: "2023-05-02")
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195888/deals/cheese_h3epxw.jpg')
deal_4.image.attach(io: file, filename: 'jack-cheese.jpg')
deal_4.save

deal_5 = Deal.create(name: "Broccoli", category: "Vegetable", price: "1.18", description: "Stock up on fresh broccoli for only $1.18/kg at Aldi in Melbourne!", start_date: "2023-05-01", end_date: "2023-05-07", user_id: 4, submission_date: "2023-05-02")
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195888/deals/broccoli_octwgp.png')
deal_5.image.attach(io: file, filename: 'broccoli.png')
deal_5.save

deal_6 = Deal.create(name: "Royal Gala Apples", category: "Fruit", price: "1.90", description: "Found a great deal on gala apples at IGA XPress Exhibition Street!", start_date: "2023-05-02", end_date: "2023-05-08", user_id: 2, submission_date: "2023-05-01")
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195889/deals/gala-apples_vrr5j6.jpg')
deal_6.image.attach(io: file, filename: 'apples.jpg')
deal_6.save

deal_7 = Deal.create(name: "Grapes", category: "Fruit", price: "1.99", description: "Get a great deal on cotton candy grapes for $1/box in Coles Melbourne this week!", start_date: "2023-05-02", end_date: "2023-05-08", user_id: 4, submission_date: "2023-05-01")
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195890/deals/grapes_jdsiab.jpg')
deal_7.image.attach(io: file, filename: 'grapes.jpg')
deal_7.save

deal_8 = Deal.create(name: "Brown Onions", category: "Vegetable", price: "0.99", description: "Stock up on fresh brown onions for only $0.99/5kg at Coles in Melbourne!", start_date: "2023-05-01", end_date: "2023-05-07", business_id: 1, submission_date: "2023-05-01")
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195893/deals/brown-onions_mco5nt.jpg')
deal_8.image.attach(io: file, filename: 'onions.jpg')
deal_8.save

deal_9 = Deal.create(name: "Beef Rump Steak", category: "Meat", price: "14.99", description: "Get beef rump steak for $14.99/kg at Aldi Richmond!", start_date: "2023-05-03", end_date: "2023-05-10", business_id: 2, submission_date: "2023-05-02")
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195889/deals/rump-steak_imkmud.jpg')
deal_9.image.attach(io: file, filename: 'rump-steak.jpg')
deal_9.save

###########################################################################
# Recipes
recipe_1 = Recipe.create(
  name: 'Sweet and Sticky Vegemite Chicken',
  description: 'The unlikely pairing of Vegemite with Asian flavours makes this one-pan chicken dinner a must-make.',
  servings: 4,
  cook_time: 25,
  prep_time: 15,
  ingredients: '1 tbs sesame oil, 8 chicken drumsticks, 3 cloves garlic thinly sliced, 2 tsp Vegemite, 1/3 cup boiling water, 2 tbs sweet chilli sauce, 2 tbs oyster sauce, 1tbs sweet soy sauce, 2 tbs brown super, 2 tbs rice wine vinegar, 1 long red chilli thinly sliced, 1 bunch steamed Chinese broccoli to serve, steamed jasmine rice to serve.',
  steps: '1. Heat oil in a large frying pan. Cook chicken, turning, for 5 minutes or until browned all over. Add garlic to pan and cook for 1 minute. 2. Combine Vegemite and boiling water in a small bowl until smooth. Stir in sauces, sugar and vinegar. Add to pan. Bring to a simmer. Simmer, covered, for 10 minutes. Simmer, uncovered, turning chicken occasionally, for 5 minutes or until chicken is cooked through and sauce is sticky. 3. Serve chicken with Chinese broccoli and steamed rice. Drizzle with sauce and sprinkle with chilli.'
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195588/recipes/sweet-and-sticky_vegemite-chicken_pfjnk8.jpg')
recipe_1.image.attach(io: file, filename: 'vegemite-chicken.jpg')
recipe_1.save

recipe_2 = Recipe.create(
  name: 'Crunchy Chicken Drumsticks',
  description: 'Breadcrumbs make these drumsticks nice and crunchy!',
  servings: 4,
  cook_time: 45,
  prep_time: 20,
  ingredients: '1 cup panko breadcrumbs, 1 tsp garlic powder, ½ tsp smoked paprika, ½ cup plain flour, 1 egg, ½ cup milk, 8 chicken drumsticks, olive oil spray, 1 tbs fresh thyme leaves chopped, 1 pinch salt and pepper.',
  steps: '1. Place panko breadcrumbs on a plate, then add garlic powder and paprika and mix to combine. 2. Place flour on a plate. Season with salt and pepper. Whisk egg and milk in a shallow bowl. 3. Toss 1 piece of chicken in flour to coat. Dip in the egg mixture, then toss in breadcrumbs, pressing to secure. Place onto a plate. Repeat with remaining chicken. Refrigerate for 10 minutes. 4. Preheat the oven to 200C/180C fan-forced. Line an oven tray with baking paper. 5. Arrange chicken in a single layer on prepared tray. Spray all over with oil spray. Bake, turning once, for 45 minutes or until golden and chicken is cooked through. Serve chicken sprinkled with thyme leaves.'
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195576/recipes/crunchy-chicken-drumsticks_irnqmf.jpg')
recipe_2.image.attach(io: file, filename: 'crunch-drumsticks.jpg')
recipe_2.save


recipe_3 = Recipe.create(
name: "Baked Chicken Drumsticks",
description: "These chicken drumsticks are really easy to prepare and cook, and slow baking them in the oven means a lot of extra flavours and sealed into the meat. Perfect for a Sunday lunch or even a weeknight meal.",
servings: 4,
cook_time: 85,
prep_time: 15,
ingredients: "8 chicken drumstick, ¼ cup olive oil, 15 g butter, 2 bulbs fennel bulb cored cut into wedges, 700 g Kipfler potato halved, 1 red onion cut into wedges, 1 lemon cut into wedges, 1 cup chicken stock, 250 g cherry truss tomato",
steps: "1. Preheat oven to 200 C or 180 C fan-forced. 2. Season drumsticks. Heat 2 tablespoons of oil and butter in a large frying pan over medium heat. Cook chicken, turning, for 10 minutes or until browned. 3. Meanwhile, place fennel, potatoes and onion on a large oven tray. Drizzle with remaining oil. Season and toss to coat. Squeeze lemon wedges and add to tray. Nestle chicken amongst vegetables. 4. Add stock to frying pan and scrape base to dislodge any brown bits. Pour over vegetables. Bake for 1 hour, basting chicken and vegetables halfway through. 5. Increase oven to 220 C or 200 C fan forced. Add tomatoes and bake for 15 minutes."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195576/recipes/baked-chicken-drumsticks_lop02e.jpg')
recipe_3.image.attach(io: file, filename: 'baked-drumsticks.jpg')
recipe_3.save

recipe_4 = Recipe.create(
name: "Roast Chicken Traybake Dinner For Two",
description: "This delicious garlic and thyme roast chicken traybake makes enough for two. Simply throw everything onto a tray and let the oven do the rest.",
servings: 2,
cook_time: 40,
prep_time: 10,
ingredients: "2 tbsp extra virgin olive oil, 2 tsp smoked paprika, 2 tsp fresh thyme leaves plus extra small springs to serve, ...Skipped 1 messages",
steps: "1. Preheat the oven to 200°C. 2. Mix together the oil, smoked paprika, thyme leaves, and garlic in a small bowl. 3. Cut the potatoes into small cubes and add them to a roasting tin along with the chicken breasts. Drizzle over the spiced oil and toss everything together until well coated. 4. Roast for 20-25 minutes until the chicken is golden brown and cooked through and the potatoes are tender. 5. Serve with steamed green beans and extra thyme leaves, if you like."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195587/recipes/roast-chicken-traybake_ffyedp.jpg')
recipe_4.image.attach(io: file, filename: 'chicken-traybake.jpg')
recipe_4.save

recipe_5 = Recipe.create(
  name: "Baked Honey Mustard Chicken",
  description: "Sweet and tangy, this baked honey mustard chicken is a simple midweek dinner that’s delicious served with mashed potato and green veg.",
  servings: 4,
  cook_time: 35,
  prep_time: 5,
  ingredients: "1 tbsp olive oil, 4 chicken thighs (skin on), 4 chicken drumsticks, ¼ cup honey, ¼ cup seeded mustard, 1tbsp Dijon mustard, ½ cup sour cream, ½ cup chicken stock, ½ tsp sweet paprika, 1 clove garlic crushed, 3 sprigs thyme",
  steps: "1. Heat oil in a large frypan over medium heat. Season chicken pieces with salt and pepper and brown well on all sides. Place in a casserole dish in a single layer. 2. Whisk together remaining ingredients in a jug and pour over chicken. Bake for 30 minutes, basting every 10 minutes, until chicken is cooked through and sauce has reduced and thickened slightly."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195576/recipes/baked-honey-mustard-chicken_y7lfn4.jpg')
recipe_5.image.attach(io: file, filename: 'honey-mustard-chicken.jpg')
recipe_5.save

recipe_6 = Recipe.create(
  name: "Slow Cooker Chicken",
  description: "This is a fantastic and moist roast chicken, which is best done in a slow cooker.",
  servings: 6,
  cook_time: 365,
  prep_time: 15,
  ingredients: "2 kg whole chicken fresh, ½ lemon, 3 garlic cloves, 5 sprigs fresh thyme, ½ tsp salt and pepper, 1 pinch paprika",
  steps: "1. Wash chicken then pat dry with paper towel. 2. Place the lemon, garlic and thyme into the cavity of the chicken. 3. Season chicken with some salt, pepper and paprika. 4. Place in oiled slow cooker and cook on high for 6 hours."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195587/recipes/slow-cooker-chicken_rwvrym.jpg')
recipe_6.image.attach(io: file, filename: 'slow-cooker-chicken.jpg')
recipe_6.save

recipe_7 = Recipe.create(
  name: "Mexican Beef",
  description: "A very versatile and healthy Mexican beef filling/topping for tacos, nachos and burritos. It is also great with rice.",
  servings: 6,
  cook_time: 30,
  prep_time: 10,
  ingredients: "500 g lean beef mince, 440 g red canned kidney beans drained and rinsed, 1 onion large diced, ½ tsp sugar, ½ tsp salt and pepper, ½ tsp garlic salt, 1 tsp oregano, 2 tsp ground cumin, ½ tsp paprika, 1 tsp ground coriander, 1 tsp ground chilli to taste ½ cup water, 1 cup passata, ½ cup canned diced tomato, 1 tsp olive oil.",
  steps: "1. Heat oil in pan and fry onions until transparent. Remove onions and fry mince until brown. Add onions and spices to mince in pan and fry for 5 minutes, stirring frequently. 2. Add the passata, tomatoes, red kidney beans and water and cook on low-medium heat for 10 minutes. Add a little more water if the mixture becomes too dry."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195577/recipes/mexican-beef-mince_jjxqlk.jpg')
recipe_7.image.attach(io: file, filename: 'mexican-beef.jpg')
recipe_7.save

recipe_8 = Recipe.create(
  name: "Bolognese-Style Meatballs",
  description: "A great midweek meal idea, that’s so easy to make too!",
  servings: 4,
  cook_time: 25,
  prep_time: 15,
  ingredients: "500 g lean beef mince, 1/3 cup pizza sauce, ½ red capsicum small, 2 tbs breadcrumbs dried, 2 tbs olive oil, 500 g bolognese pasta sauce jar, 400 g penne cooked drained, 1 handful parmesan shaved.",
  steps: "1. Combine mince, pizza sauce, capsicum and breadcrumbs in a large bowl and stir well. Form tablespoonfuls of mixture into meatballs using wet hands. Refrigerate for 15 minutes. 2. Heat oil in a large non stick frypan and cook meatballs until lightly browned. Add pasta sauce and bring to the boil. Reduce heat, cover and simmer for 8-10 minutes or until meatballs are cooked through. 3. Toss hot pasta through the meatball mixture and serve with parmesan cheese."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195577/recipes/bolognese-style-meatballs_qr3xwu.jpg')
recipe_8.image.attach(io: file, filename: 'bol-meatballs.jpg')
recipe_8.save

recipe_9 = Recipe.create(
  name: "Macaroni Mince",
  description: "Quick and easy. Great for nights on the run.",
  servings: 4,
  cook_time: 40,
  prep_time: 30,
  ingredients: "750 g beef mince, 420g can condensed tomato soup, 40 g French onion instant soup, 2 cup macaroni uncooked, 2 cup water, 1 tsp mixed herbs to taste",
  steps: "1. Brown mince in large pot. 2. Add the soup mix. 3. Add tomato soup. Stir. 4. Add the water and macaroni. Stir. 5. Add in mixed herbs to taste. 6. Let the mix come up to the boil, stirring occasionally. 7. Reduce to a low simmer, cover, and cook for 15-20 minutes stirring occasionally."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195577/recipes/macaroni-mince_hlev2e.jpg')
recipe_9.image.attach(io: file, filename: 'mac-mince.jpg')
recipe_9.save

recipe_10 = Recipe.create(
  name: "Stuffed Capsicums",
  description: "These stuffed capsicums make an easy, healthy, low-carb dinner. Whether you're entertaining or just looking for a different way to use up mince meat, these Italian-style stuffed capsicums are mouth wateringly delicious.",
  servings: 6,
  cook_time: 75,
  prep_time: 15,
  ingredients: "6 red capsicums medium, 500 g beef mince, 1 onion diced large, 4 tbs rice, 440 mL canned tomato soup, 570 g pasta sauce, 300 mL water, ¼ cup cheese grated, 1 pinch salt and pepper",
  steps: "1. Fry onion. 2. Add water and rice. Simmer for 10 minutes. 3. Stir in mince and bolognese sauce. 4. Add salt and pepper to taste. 5. Stuff the capsicums with the mince mixture and place in an ovenproof dish. 6. Pour the soup around the capsicums. Sprinkle grated cheese over the top and bake at 180C for 55 minutes, or until capsicums are soft."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195587/recipes/stuffed-capsicum_zann2l.jpg')
recipe_10.image.attach(io: file, filename: 'stuffed-caps.jpg')
recipe_10.save

recipe_11 = Recipe.create(
  name: "Beef Rissoles",
  description: "Beef rissoles great for a barbecue and terrific on sandwiches the next day",
  servings: 4,
  cook_time: 10,
  prep_time: 5,
  ingredients: "500 g beef mince, 1 carrot grated, 1 onion small grated, 1 egg beaten, ¼ cup fresh breadcrumbs, 1 tbs tomato sauce, 1 tbs barbecue sauce, 1 tbs curry powder, 1 tbs honey, 1 tbs dried mixed herbs",
  steps: "1. Combine all ingredients and mix. Divide mixture into rissoles and pan fry or bbq."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195576/recipes/beef-rissoles_k8gbsi.jpg')
recipe_11.image.attach(io: file, filename: 'beef-rissoles.jpg')
recipe_11.save

recipe_12 = Recipe.create(
  name: "Beef and Gravy Casserole",
  description: "Winter comfort food that is tasty and easy to make. Even the kids will eat it.",
  servings: 4,
  cook_time: 100,
  prep_time: 10,
  ingredients: "1 ½ tbs olive oil, 750 g beef chuck steak cubed, 1 brown onion chopped, 2 carrot coarsely chopped, 5 mushrooms quartered, 7 green beans thickly sliced, 2 cups beef stock, 2 tbs tomato paste, 1 tsp gravy powder",
  steps: "1. Heat oil in a large frying pan over high heat. Add onion and cook until coloured. 2. Add beef and cook until browned. 3. Reduce heat and add remaining ingredients. 4. Bring to the boil. Reduce heat to a simmer and cover. 5. Cook for 1 to 1 ½ hours, or until meat is tender."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195576/recipes/beef-and-gravy_casserole_naj8ot.jpg')
recipe_12.image.attach(io: file, filename: 'beef-casserole.jpg')
recipe_12.save

recipe_13 = Recipe.create(
  name: "Roast Potatoes",
  description: "Never get crispy roast potatoes? This is the recipe for you!",
  servings: 6,
  cook_time: 50,
  prep_time: 5,
  ingredients: "6 potatoes, 2 tbs olive oil, 2 tbs butter",
  steps: "1. Melt equal amounts of butter and olive oil in a small bowl. Brush over potatoes, ensuring they are well covered. Bake at 200C for 50 minutes."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195587/recipes/roast-potatoes_dremtk.jpg')
recipe_13.image.attach(io: file, filename: 'roast-potatoes.jpg')
recipe_13.save

recipe_14 = Recipe.create(
  name: "Stuffed Potatoes",
  description: "Very easy and delicious, excellent for a cold winters day snack!",
  servings: 2,
  cook_time: 15,
  prep_time: 5,
  ingredients: "2 potatoes large, 200 g sour cream, 1 spring onion finely chopped, 100 g cheese grated, 1 seasoning",
  steps: "1. Microwave potatoes for 3 minutes each on high. Cut potatoes in half and scoop out the middle with a spoon, leaving a thin layer inside. Mix the scooped potato, sour cream, spring onion and 50 g of the cheese in a bowl. Spoon the mixture back into the potatoes and sprinkle the rest of the cheese on top. Place under the grill until golden brown."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195587/recipes/stuffed-potatoes_qgwgrt.jpg')
recipe_14.image.attach(io: file, filename: 'stuffed-potatoes.jpg')
recipe_14.save

recipe_15 = Recipe.create(
  name: "Hasselback Potatoes",
  description: "So easy and delicious. The kids love them.",
  servings: 2,
  cook_time: 20,
  prep_time: 5,
  ingredients: "4 potatoes, 1 pinch sea salt, 1 tbs olive oil, 1 pinch mixed herbs",
  steps: "1. Wash the potatoes and pat dry with paper towels. Score each potato every 2 mm vertically, but not all the way to the bottom. Place on a baking tray and drizzle olive oil over each one and then sprinkle with sea salt and fresh or dried herbs. Bake at 200C until cooked all the way through."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195577/recipes/hasselback-potatoes_b4ughf.jpg')
recipe_15.image.attach(io: file, filename: 'hasselback-potatoes.jpg')
recipe_15.save

recipe_16 = Recipe.create(
  name: "French Onion Potato Bake",
  description: "I made this in a restaurant I worked in and always received compliments.",
  servings: 6,
  cook_time: 70,
  prep_time: 10,
  ingredients: "1 brown onion large thinly sliced, 6 potatoes large peeled and sliced, 300 mL sour cream, 46 g French onion soup mix, 1 tsp milk, 1 cup tasty cheese grated",
  steps: "1. Preheat oven to 180-200C. In a frying pan with a little butter, slowly cook onion until caramelised and brown. Stir together sour cream and soup mix. Add just a dash of milk to make a saucy consistency. On the bottom of a small casserole dish add a layer of potato. Smooth over a quarter of the sour cream, onion and sprinkle with cheese. Repeat layers 4 times, finishing with sour cream, onion and cheese. Cover with lid and cook in microwave for 10 minutes on high. Place in oven for about 45 minutes or until potato is cooked through. Remove lid and cook for 10 minutes more."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195577/recipes/french-onion-potato-bake_hl6ebq.jpg')
recipe_16.image.attach(io: file, filename: 'french-bake.jpg')
recipe_16.save

recipe_17 = Recipe.create(
  name: "Spinach and Potato Bake",
  description: "A great vegetarian dish for everyone",
  servings: 6,
  cook_time: 60,
  prep_time: 10,
  ingredients: "6 potatoes peeled, 600 g pumpkin, 3 carrots chopped, 60 g butter, 100 g spinach, 12 eggs beaten, 200 mL thickened cream, ½ cup cheese grated.",
  steps: "1. Preheat oven to 180C. Lightly grease a lasagne dish. Cut potatoes, pumpkin and carrots into cubes. Heat butter in frying pan and add the vegetables. Cook covered for 10 minutes, stirring occasionally until golden brown. Add spinach and cook until wilted. Continue to cook until all the liquid has evaporated. Spoon into lasagne dish. Beat eggs and cream until combined. Season with salt or pepper and pour egg mixture over the potatoes and top with cheese. Bake for 35-40 minutes or until golden brown."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195587/recipes/spinach-and-potato-bake_nm79je.jpg')
recipe_17.image.attach(io: file, filename: 'spinach-potato-bake.jpg')
recipe_17.save

recipe_18 = Recipe.create(
  name: "Potato Salad",
  description: "A delicious and easy family favourite.",
  servings: 6,
  cook_time: 20,
  prep_time: 30,
  ingredients: "1 ½ kg baby potatoes peeled, 1 bunch spring onions sliced, 350 g bacon diced, 1 jar mayonnaise",
  steps: "1. Cut potatoes in half. Cook potatoes in boiling water until soft. Drain. Cook bacon pieces and spring onions in a pan. Combine potatoes, bacon and onion in a large salad bowl. Refrigerate until cool. When cooled, add mayonnaise and combine well."
)
file = URI.open('https://res.cloudinary.com/dpl1wgx0u/image/upload/v1683195576/recipes/potato-salad_kx1lpe.jpg')
recipe_18.image.attach(io: file, filename: 'potato-salad.jpg')
recipe_18.save

###########################################################################
puts "Finished!"
