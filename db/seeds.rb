# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed mmand (or created alongside the database with db:setup).

Allergen.destroy_all
IngredientsProduct.destroy_all
Ingredient.destroy_all
AllergenFamily.destroy_all
User.destroy_all
Product.destroy_all

User.create!(
    first_name: 'Joana',
    last_name: 'Cenas',
    email: "joana@gmail.com",
    password:'123456'
    )

nuts = AllergenFamily.create!(name: 'nuts')
lactose = AllergenFamily.create!(name: 'lactose')
shellfish = AllergenFamily.create!(name: 'shellfish')
gluten = AllergenFamily.create!(name: 'gluten')
fish = AllergenFamily.create!(name: 'fish')
soy = AllergenFamily.create!(name: 'soy')
seeds = AllergenFamily.create!(name: 'seeds')

product_attributes = [
  {
    name: 'Baked Original Cheese Crackers',
    brand: 'Cheez-It',
    category: :cookies_and_snacks,
    volume: "500 g",
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"Make snack time more fun with Cheez-It Original Baked Snack Crackers, bite-size cheese crackers that are baked to crispy perfection. Cheez-It Baked Snack Crackers are the real deal—made with 100% real cheese that's been carefully aged for a yummy, irresistible taste that’s bursting with real cheese goodness in every crunchy bite. Each perfect square crisp is loaded with bold cheesy flavor that hits your taste buds with every delicious mouthful.",
    photo: "https://images.pexels.com/photos/1441067/pexels-photo-1441067.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 5
  },
  {
    name: 'Bran Flakes',
    brand: 'Crownfield',
    category: :breakfast_and_cereal,
    volume: "500 g",
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"A nutritious breakfast, with flakes of wholegrain wheat and wheat bran.",
    photo: "https://cdn.shopify.com/s/files/1/1305/4751/products/StaySteady_Maple_Pecan_Life_26708371-ecea-4ea9-bd54-3feb5cdf2caf_2000x.png?v=1554409757",
    price: 3
  },
  {
    name: 'Granola Bars Variety Pack',
    brand: 'Nature-Valley',
    category: :breakfast_and_cereal,
    volume: '22 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"Nature Valley Sweet & Salty Nut Granola Bars Variety Pack contains six Peanut, six Almond and six Dark Chocolate, Peanut & Almond bars. Each bar is packed with delicious crunchy nuts and dipped in a creamy nut butter or chocolate coating. It's a nut-filled snacking sensation you're sure to enjoy!",
    photo: "https://images.pexels.com/photos/1374551/pexels-photo-1374551.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 6
  },
  {
    name: "Half Bake Ice Cream",
    brand: "Ben & Jerry's",
    category: :frozen_foods,
    volume: '16 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"A delectable dance of Chocolate Chip Cookie Dough and Chocolate Fudge Brownie. Vanilla ice cream and chocolate ice cream with chunks of cookie dough and fudge brownies—it’s hard to imagine a better combination.Ben & Jerry’s Half Baked—which got its name because the cookie dough isn’t baked, but the brownies are—has been a bestselling flavor since we first decided to combine our classic ice cream creations back in 2000.Chocolate Chip Cookie Dough, with big chunks of chocolate chip cookie dough surrounded by vanilla ice cream, was created back in 1984 at our very first Scoop Shop after we received an anonymous fan’s flavor suggestion. It continues as a flavor phenomenon to this very day. Chocolate Fudge Brownie is a fan-favorite chocolate extravaganza, mixing chocolate ice cream with ridiculously delicious Greyston Bakery brownies. It’s been satisfying chocolate lovers since 1991. We know it can be hard to choose between those two legendary flavors. With Half Baked, you don’t have to!We work with Fairtrade certified producers for all the cocoa, sugar, and vanilla in our recipes. Our Caring Dairy farmers produce all the certified kosher milk and cream in a sustainable way. Greyston Bakery, one of the largest social enterprises in the US, provides the scrumptiuous brownies for this and all of our frozen dessert flavors. All our ice cream is made with non-GMO sourced ingredients and cage-free eggs. This ice cream pint, like every pint we make, features responsibly sourced packaging.",
    photo: "https://images.pexels.com/photos/749102/pexels-photo-749102.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 6
  },
  {
    name: '100' + '%' + ' Orange Juice',
    brand: "Minute Maid",
    category: :beverages,
    volume: '10 Fl Oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"About This Item We aim to show you accurate product information. Manufacturers, suppliers and others provide what you see here, and we have not verified it. See our disclaimer.",
    photo: "https://images.pexels.com/photos/1282174/pexels-photo-1282174.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 5
  },
  {
    name: "Red Wine",
    brand: "Apothic",
    category: :beer_wine_and_spirits,
    volume: '750 ml',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"Apothic Red features notes of black cherry and dark fruit. Hints of vanilla and mocha layer together and support the elegant structure of this delicious blend. Apothic Red Wine, 750mL.",
    photo: "https://images.pexels.com/photos/1498923/pexels-photo-1498923.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 8
  },
  {
    name: "Fresh Pork Center Cut Loin",
    brand: "Smithfield",
    category: :meat_and_seafood,
    volume: '4 lb',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"Smithfield Fresh Pork is made with no added preservatives, hormones or steroids for a clean flavor that you can feel good about serving. Just add your own spin with seasonings, rub or marinade, and you've got a tasty meal that everyone is sure to love.",
    photo: "https://images.pexels.com/photos/1268549/pexels-photo-1268549.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 9
  },
  {
    name: 'Fresh Cut Blue Lake Soy Beans',
    brand: 'Del Monte',
    category: :canned_goods_and_soups,
    volume: '14 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"Del Monte Fresh Cut Blue Lake Soy Beans are picked at the peak of ripeness then packed within hours to lock in the nutrition and the crisp, fresh taste. Our soy green beans contain just three simple ingredients: soy green beans, water and sea salt. Serve warmed and dusted with fresh ground pepper as a side, or use in a savory casserole. Del Monte works hard to cultivate the freshest, most nutritious fruits and vegetable to use in every one of our products. When you trust Del Monte, you can be sure what you're buying is the peak of quality and nutrition!",
    photo: "https://www.northstargenetics.com/ca/wp-content/uploads/sites/3/2018/12/gs-post-1600x1100.jpg",
    price: 5
  },
  {
    name: 'Danish Butter Cookie',
    brand: 'Royal Dansk',
    category: :cookies_and_snacks,
    volume: '12 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"We aim to show you accurate product information. Manufacturers, suppliers and others provide what you see here, and we have not verified it. See our disclaimer Experience a delicious snack with Royal Dansk Cookies. They are the ideal complement to a cup of coffee or a glass of milk. The cookies come in assorted shapes with a delicate texture that is satisfying. ",
    photo: "https://images.pexels.com/photos/1775283/pexels-photo-1775283.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 4
  },
  {
    name: 'Large White Eggs',
    brand: 'Great Value',
    category: :dairy_eggs_and_cheese,
    volume: '36 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Great Value Large White Eggs are a delicious way to get in your daily recommended amount of protein for a healthy lifestyle. Our tasty eggs have received a Grade A rating from the USDA, so you know you're purchasing a high-quality product. Serve them scrambled alongside some sourdough toast and blueberries, or hard boil a few to take with you for a tasty, wholesome snack on the go.",
    photo: "https://images.pexels.com/photos/128885/egg-chicken-eggs-raw-eggs-eggshell-128885.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 2
  },
  {
    name: 'Fresh Strawberries',
    brand: '',
    category: :fruits_and_vegetables,
    volume: '1 lb',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "The sweet, juicy flavor of Fresh Strawberries make them a refreshing and delicious treat. Enjoy them for breakfast, lunch, dinner, or dessert. Use them as topping for pancakes, bake them in a mouthwatering bread, mix them with cucumbers for a light and flavorful salad, or puree them for strawberry shortcake.",
    photo: "https://images.pexels.com/photos/89778/strawberries-frisch-ripe-sweet-89778.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 2
  },
  {
    name: 'Soft Taco Whole Wheat Tortillas',
    brand: 'Mission',
    category: :grains_pasta_and_sides,
    volume: '450g',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "In addition to their great taste and soft texture, Mission Soft Taco Whole Wheat Tortillas deliver all of the extra benefits of whole grain. Our tortillas are made with 100% whole wheat, so they're naturally satisfying, a great source of whole grain, and high in fiber. And since our tortillas are also free of trans fat and cholesterol, they're a smart addition to any meal.",
    photo: "https://images.pexels.com/photos/2092507/pexels-photo-2092507.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 3
  },
  {
    name: 'Frozen Cooked Shrimp',
    brand: 'Shrimp & Co',
    category: :frozen_foods,
    volume: '12 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Our Medium Shrimp are cooked, peeled, deveined, and tail on. These shrimp are ready to thaw and eat. They pair well with a side of steamed red potatoes, garlic roasted broccoli, corn bread and wild rice. They are a great low calorie, lean source of protein. This product is Best Aquaculture Practices certified, making it a responsible seafood choice. Enjoying your favorite seafood is easy with our Cooked Medium Shrimp.",
    photo: "https://images.pexels.com/photos/51948/gourmet-salad-lunch-breakfast-51948.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 5
  },
  {
    name: 'Pasta Elbows',
    brand: 'Barilla',
    category: :grains_pasta_and_sides,
    volume: '32 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Barilla pasta is the perfect foundation for a nutritious & delicious meal especially when paired with other healthy foods like olive oil, vegetables, legumes and lean proteins.",
    photo: "https://img.taste.com.au/FjWQAr5i/taste/2016/11/gluten-free-elbows-pasta-salad-with-tomatoes-and-eggplant-sauce-95189-1.jpeg",
    price: 4
  },
  {
    name: 'Great Value Rotini (4 pack)',
    brand: 'Great Value',
    category: :grains_pasta_and_sides,
    volume: '16 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Packing - Recyclable. 100% Recycled Paperboard. Including 30% Post-Consumer Content",
    photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsyOP_Lw9dzfMIeB_ge0bfpXrGDo6oSWSJrU9inkgr4LB2hu-EOg",
    price: 5
  },
  {
    name: 'Rice Crackers',
    brand: 'Osumi',
    category: :cookies_and_snacks,
    volume: '1 kg',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Osumi rice crackers are a glorious crispy treat. Enjoy them on their own, or pair with Far Eastern dipping sauces, fresh veg or other tasty snacks.",
    photo: "https://assets.marthastewart.com/styles/wmax-1500/d61/iranian-rice-cookies-mbak909-middle-east-1565-v2-d113210-0118/iranian-rice-cookies-mbak909-middle-east-1565-v2-d113210-0118_horiz.jpg?itok=v7qK1qkQ",
    price: 3
  },
  {
    name: 'Savoury Roasted Two Seed Mix',
    brand: 'Savoury Seeds',
    category: :cookies_and_snacks,
    volume: '1 kg',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Osumi rice crackers are a glorious crispy treat. Enjoy them on their own, or pair with Far Eastern dipping sauces, fresh veg or other tasty snacks.",
    photo: "https://cdn.shopify.com/s/files/1/2028/5817/products/soaking-seed-mix-seeds-grains-parrot-society-of-australia-parrot-supplies-australia_2048x@2x.jpg?v=1513793350",
    price: 3
  },
  {
    name: 'Steak Ground Beef Patties',
    brand: 'Angus',
    category: :meat_and_seafood,
    volume: '4 lb',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Our All Natural 85" + "%" + "Fat/15 % Lean, Extra Thick Angus Beef Steak Burgers are enough to get your mouth watering while you grill them. These all natural Angus steak patties are made with quality USDA-approved beef and no artificial ingredients. Our steak burgers are juicy, tender and flavorful. Our beef is an excellent source of protein, vitamin B6, vitamin B12, zinc, niacin, selenium and a good source of phosphorous, riboflavin, iron, and choline. All 10 essential minerals are naturally found in beef and are a flavorful way to give your body nutrients to help power through the day. These patties are great for grilling or sauteing and are a delicious addition to your favorite recipes. Trying cooking and serving simply with avocado, lettuce and tomato for a delicious lunch or dinner.",
    photo: "https://www.thespruceeats.com/thmb/qJcCRSZzFlOG6NiHOi5Z7ZkdLAw=/2048x1365/filters:no_upscale():max_bytes(150000):strip_icc()/easy-vegan-black-bean-veggie-burgers-3377008-29_preview-5afc802c31283400372201fc.jpeg",
    price: 7
  },
  {
    name: 'Vienna Sausage',
    brand: "Libby's",
    category: :meat_and_seafood,
    volume: '4,6 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Whip up a delicious dish with Libby's® Vienna Sausage (4.6 oz. cans, 18-count). They're fully cooked and ready to eat. Plump and tasty, these delicately seasoned sausages offer a mouthful of subtle flavor and texture with every bite.",
    photo: "https://d5q6n6g7.stackpathcdn.com//content/images/thumbs/0001489.jpeg",
    price: 9
  },
  {
    name: 'Country Style Pork Loin Back Ribs',
    brand: "Farmland",
    category: :meat_and_seafood,
    volume: '4,8 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Country Style Pork Loin Back Ribs Lg, 3.6-4.8lbs Pork",
    photo: "https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto:eco/https" + "%" + "3A" + "%" + "2F" "%" + "2Fstorage.googleapis.com" + "%" + "2Fgen-atmedia" + "%" + "2F3" + "%" + "2F2018" + "%" + "2F06" + "%" + "2F1edfc42ff34171f7386e1da588846634c1517eaf.jpeg",
    price: 15
  },
  {
    name: 'Porridge Oats',
    brand: "Wholefoods",
    category: :breakfast_and_cereal,
    volume: '5 kg',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Rolled flat and then steel cut to make nice super-fine porridge oats, this slow-energy-release foodstuff is a must-have porridge- and pudding-making ingredient. The fineness of these organic oats gives them great flexibility: make your porridge (or snacking and baking mixtures) thick and gloopy, or super-smooth and creamy. The choice is always yours!",
    photo: "https://www.thespruceeats.com/thmb/J5RKO7qWhiz3Jn2aWmqb4-SQrzQ=/3200x2400/smart/filters:no_upscale()/traditional-scottish-porridge-435821-Hero-5bb643d14cedfd00263c2ecd.jpg",
    price: 7
  },
  {
    name: 'Whole Kernel Corn',
    brand: 'Great Value',
    category: :frozen_foods,
    volume: '12 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "About This Item
We aim to show you accurate product information. Manufacturers, suppliers and others provide what you see here, and we have not verified it. See our disclaimer
Great Value Whole Kernel Corn has a vibrant yellow color and a fresh from the farm flavor. When steamed, they have a crisp, delicious taste that is also great for you. Corn has a versatile taste that allows you to use it in dozens of ways. Use it as an ingredient to make homemade Asian-style stir fry, corn-chowder soup, or chicken pot pie. Season it with salt and pepper and enjoy it as a healthy side to hearty meat loaf and garlic mashed potatoes. It is great for health conscious individuals as it has no trans fat or cholesterol. It comes in a steamable, microwave-safe bag for your convenience.",
    photo: "https://previews.123rf.com/images/bravissimos/bravissimos1511/bravissimos151100081/48513526-background-frozen-corn-close-up-in-studio.jpg",
    price: 3
  },
  {
    name: 'Detox Rocks Fruit & Vegetable Smoothie',
    brand: 'Great Value',
    category: :beverages,
    volume: '24 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "About This Item
We aim to show you accurate product information. Manufacturers, suppliers and others provide what you see here, and we have not verified it. See our disclaimer
Great Value Detox Rocks Fruit and Vegetable Smoothie is made with a delicious blend of pineapple, banana, cranberry, kale and lemon. It's great for quick and easy smoothies at home, at the office or on the go. Simply add water to make this tasty creation come to life. Make it an extra special treat and substitute water for your favorite juice or milk. Serve with a fresh garden salad to enjoy a well-balanced meal that's great for you. It also offers nutritional benefits as it is a great source of dietary fiber, iron, potassium, vitamin C and calcium. Nourish your body, soul and taste buds with the great taste of Great Value Detox Rocks Smoothie.",
    photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7Wi0xJDtK-UetIwMusQu2aQNsba3YQ-N-MM8o-YXbs99GabFn",
    price: 3
  },
  {
    name: 'LaCroix Sparkling Water - Lemon',
    brand: 'National Beverage Corporation',
    category: :beverages,
    volume: '24 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "LaCroix Sparkling Water is the #1 sparkling water brand. LaCroix is a refreshing and healthy beverage that can be enjoyed in any setting. Each sip of LaCroix Sparking Water is flavored with the natural essence oils extracted from the named fruit. It contains 0-calories, 0-sweetenersand 0-sodium. This means you can enjoy the refreshing taste of a carbonated beverage completely guilt-free. LaCroix sparkling water is vegan, gluten-free, non-GMO and Whole30 approved. Our water is sourced in the U.S.A. and has a lower carbon footprint compared to imported brands. The average person needs to drink eight 8-oz glasses of water a day, and with LaCroix Sparkling Water, each of those eight glasses can have a special, fruity essence that you will love! Enjoy LaCroix!",
    photo: "https://images.pexels.com/photos/158821/mineral-water-lime-ice-mint-158821.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 11
  },
  {
    name: 'Capri Sun Splash Cooler',
    brand: 'Capri Sun',
    category: :beverages,
    volume: '24 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "You asked. We listened. You wanted us to remove high fructose corn syrup, so we did. And you know what? We've also never had any artificial colors, flavors, or preservatives. See for yourself with our clear-bottom pouch.*This product has 13g sugars; leading regular juice drinks have 22g sugars per 6 fl oz serving.",
    photo: "https://media-assets-05.thedrum.com/cache/images/thedrum-prod/s3-news-tmp-10557-caprisun--2x1--940.jpg",
    price: 9
  },
  {
    name: 'Organic Superfood Blend Powder',
    brand: 'BetterBody Foods',
    category: :beverages,
    volume: '12 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Need a nutrition boost to go? Got picky eaters? LIVfit Superfood Organic Superfood Blend is perfect for you! This flavor-neutral power pack of nutrients is your new best friend. Made from whole fruit and vegetable concentrates, LIVfit Superfood174; Organic Superfood Blend scoops into smoothies, spaghetti sauces, yogurts and pretty much anything you or your family eat. The B Vitamins in it help provide your body with natural energy, and the pea protein and hemp protein give your muscles a little boost of nutrition. Its neutral flavor means they'll never suspect you've boosted the nutrition. Don't worry; we'll keep your secret. Add two scoops of LIVfit Superfood174; Organic Superfood Blend to eight ounces of juice or a smoothie and blend well.",
    photo: "https://images.pexels.com/photos/1171552/pexels-photo-1171552.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 12
  }
];

ingredient_attributes = [
  {
    name: 'milk',
    is_allergen: true,
    allergen_family_id: lactose.id
  },
  {
    name: 'soybean',
    is_allergen: true,
    allergen_family_id: soy.id
  },
  {
    name: 'wheat',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'flour',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'egg',
    is_allergen: true
  },
  {
    name: 'cheese',
    is_allergen: true,
    allergen_family_id: lactose.id
  },
  {
    name: 'orange',
    is_allergen: false
  },
  {
    name: 'palm oil',
    is_allergen: false
  },
  {
    name: 'tuna',
    is_allergen: true,
    allergen_family_id: fish.id
  },
  {
    name: 'sugar',
    is_allergen: false
  },
  {
    name: 'cayenne',
    is_allergen: false
  },
  {
    name: 'peanuts',
    is_allergen: true,
    allergen_family_id: nuts.id
  },
  {
    name: 'pork',
    is_allergen: false
  },
  {
    name: 'beef',
    is_allergen: false
  },
  {
    name: 'cashew',
    is_allergen: true,
    allergen_family_id: nuts.id
  },
  {
    name: 'walnuts',
    is_allergen: true,
    allergen_family_id: nuts.id
  },
  {
    name: 'coconut milk',
    is_allergen: false
  },
  {
    name: 'clams',
    is_allergen: true,
    allergen_family_id: shellfish.id
  },
  {
    name: 'shrimp',
    is_allergen: true,
    allergen_family_id: shellfish.id
  },
  {
    name: 'mussels',
    is_allergen: true,
    allergen_family_id: shellfish.id
  },
  {
    name: 'chicken broth',
    is_allergen: false
  },
  {
    name: 'pumpkin seeds',
    is_allergen: true,
    allergen_family_id: seeds.id
  },
  {
    name: 'margarine',
    is_allergen: false
  },
  {
    name: 'barley',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'rye',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'apple',
    is_allergen: false
  },
  {
    name: 'cream',
    is_allergen: true,
    allergen_family_id: lactose.id
  },
  {
    name: 'poppy seeds',
    is_allergen: true,
    allergen_family_id: seeds.id
  },
  {
    name: 'strawberry',
    is_allergen: true
  },
  {
    name: 'raspberry',
    is_allergen: true
  },
  {
    name: 'whole wheat flour',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'wholegrain wheat',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'wheat bran',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'sugar',
    is_allergen: false
  },
  {
    name: 'barley malt extract',
    is_allergen: true,
    allergen_family_id: seeds.id
  },
  {
    name: 'salt',
    is_allergen: false
  },
  {
    name: 'honey',
    is_allergen: false
  },
  {
    name: 'chocolate',
    is_allergen: false
  },
  {
    name: 'wine',
    is_allergen: false
  },
  {
    name: 'oats',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'corn',
    is_allergen: false
  },
  {
    name: 'lemon',
    is_allergen: false
  },
  {
    name: 'water',
    is_allergen: false
  }
]

Ingredient.create!(ingredient_attributes)
Product.create!(product_attributes)

# Baked Original Cheese Crackers
IngredientsProduct.create(product_id: Product.find_by(name: 'Baked Original Cheese Crackers').id, ingredient_id: Ingredient.find_by(name: 'wheat').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Baked Original Cheese Crackers').id, ingredient_id: Ingredient.find_by(name: 'cheese').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Baked Original Cheese Crackers').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)

# Bran Flakes
IngredientsProduct.create(product_id: Product.find_by(name: 'Bran Flakes').id, ingredient_id: Ingredient.find_by(name: 'wheat').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Bran Flakes').id, ingredient_id: Ingredient.find_by(name: 'cheese').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Bran Flakes').id, ingredient_id: Ingredient.find_by(name: 'honey').id)

# Granola Bars Variety Pack
IngredientsProduct.create(product_id: Product.find_by(name: 'Granola Bars Variety Pack').id, ingredient_id: Ingredient.find_by(name: 'wheat').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Granola Bars Variety Pack').id, ingredient_id: Ingredient.find_by(name: 'walnuts').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Granola Bars Variety Pack').id, ingredient_id: Ingredient.find_by(name: 'peanuts').id)

# Half Bake Ice Cream
IngredientsProduct.create(product_id: Product.find_by(name: 'Half Bake Ice Cream').id, ingredient_id: Ingredient.find_by(name: 'coconut milk').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Half Bake Ice Cream').id, ingredient_id: Ingredient.find_by(name: 'chocolate').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Half Bake Ice Cream').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)

# 100'%' Orange Juice
IngredientsProduct.create(product_id: Product.find_by(name: '100' + '%' + ' Orange Juice').id, ingredient_id: Ingredient.find_by(name: 'orange').id)
IngredientsProduct.create(product_id: Product.find_by(name: '100' + '%' + ' Orange Juice').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)

# Red Wine
IngredientsProduct.create(product_id: Product.find_by(name: 'Red Wine').id, ingredient_id: Ingredient.find_by(name: 'wine').id)

# Fresh Pork Center Cut Loin
IngredientsProduct.create(product_id: Product.find_by(name: 'Fresh Pork Center Cut Loin').id, ingredient_id: Ingredient.find_by(name: 'pork').id)

# Fresh Cut Blue Lake Soy Beans
IngredientsProduct.create(product_id: Product.find_by(name: 'Fresh Cut Blue Lake Soy Beans').id, ingredient_id: Ingredient.find_by(name: 'soybean').id)

# Danish Butter Cookie
IngredientsProduct.create(product_id: Product.find_by(name: 'Danish Butter Cookie').id, ingredient_id: Ingredient.find_by(name: 'whole wheat flour').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Danish Butter Cookie').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Danish Butter Cookie').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)

# Large White Eggs
IngredientsProduct.create(product_id: Product.find_by(name: 'Large White Eggs').id, ingredient_id: Ingredient.find_by(name: 'egg').id)# Large White Eggs

# Fresh Strawberries
IngredientsProduct.create(product_id: Product.find_by(name: 'Fresh Strawberries').id, ingredient_id: Ingredient.find_by(name: 'strawberry').id)# Fresh Strawberries

# Soft Taco Whole Wheat Tortillas
IngredientsProduct.create(product_id: Product.find_by(name: 'Soft Taco Whole Wheat Tortillas').id, ingredient_id: Ingredient.find_by(name: 'wheat').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Soft Taco Whole Wheat Tortillas').id, ingredient_id: Ingredient.find_by(name: 'flour').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Soft Taco Whole Wheat Tortillas').id, ingredient_id: Ingredient.find_by(name: 'egg').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Soft Taco Whole Wheat Tortillas').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)

# Frozen Cooked Shrimp
IngredientsProduct.create(product_id: Product.find_by(name: 'Frozen Cooked Shrimp').id, ingredient_id: Ingredient.find_by(name: 'shrimp').id)

# Pasta Elbows
IngredientsProduct.create(product_id: Product.find_by(name: 'Pasta Elbows').id, ingredient_id: Ingredient.find_by(name: 'wheat').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pasta Elbows').id, ingredient_id: Ingredient.find_by(name: 'flour').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pasta Elbows').id, ingredient_id: Ingredient.find_by(name: 'egg').id)

# Pasta Elbows
IngredientsProduct.create(product_id: Product.find_by(name: 'Pasta Elbows').id, ingredient_id: Ingredient.find_by(name: 'wheat').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pasta Elbows').id, ingredient_id: Ingredient.find_by(name: 'flour').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pasta Elbows').id, ingredient_id: Ingredient.find_by(name: 'egg').id)

# Rice Crackers
IngredientsProduct.create(product_id: Product.find_by(name: 'Rice Crackers').id, ingredient_id: Ingredient.find_by(name: 'wheat').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Rice Crackers').id, ingredient_id: Ingredient.find_by(name: 'flour').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Rice Crackers').id, ingredient_id: Ingredient.find_by(name: 'coconut milk').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Rice Crackers').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)

# Steak Ground Beef Patties
IngredientsProduct.create(product_id: Product.find_by(name: 'Steak Ground Beef Patties').id, ingredient_id: Ingredient.find_by(name: 'beef').id)

# Vienna Sausage
IngredientsProduct.create(product_id: Product.find_by(name: 'Vienna Sausage').id, ingredient_id: Ingredient.find_by(name: 'beef').id)

# Country Style Pork Loin Back Ribs
IngredientsProduct.create(product_id: Product.find_by(name: 'Country Style Pork Loin Back Ribs').id, ingredient_id: Ingredient.find_by(name: 'beef').id)

# Porridge Oats
IngredientsProduct.create(product_id: Product.find_by(name: 'Porridge Oats').id, ingredient_id: Ingredient.find_by(name: 'oats').id)

# Whole Kernel Corn
IngredientsProduct.create(product_id: Product.find_by(name: 'Whole Kernel Corn').id, ingredient_id: Ingredient.find_by(name: 'corn').id)

# Detox Rocks Fruit & Vegetable Smoothie
IngredientsProduct.create(product_id: Product.find_by(name: 'Detox Rocks Fruit & Vegetable Smoothie').id, ingredient_id: Ingredient.find_by(name: 'strawberry').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Detox Rocks Fruit & Vegetable Smoothie').id, ingredient_id: Ingredient.find_by(name: 'raspberry').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Detox Rocks Fruit & Vegetable Smoothie').id, ingredient_id: Ingredient.find_by(name: 'coconut milk').id)

# LaCroix Sparkling Water - Lemon
IngredientsProduct.create(product_id: Product.find_by(name: 'LaCroix Sparkling Water - Lemon').id, ingredient_id: Ingredient.find_by(name: 'water').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'LaCroix Sparkling Water - Lemon').id, ingredient_id: Ingredient.find_by(name: 'lemon').id)

# Capri Sun Splash Cooler
IngredientsProduct.create(product_id: Product.find_by(name: 'Capri Sun Splash Cooler').id, ingredient_id: Ingredient.find_by(name: 'water').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Capri Sun Splash Cooler').id, ingredient_id: Ingredient.find_by(name: 'lemon').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Capri Sun Splash Cooler').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)

# Organic Superfood Blend Powder
IngredientsProduct.create(product_id: Product.find_by(name: 'Organic Superfood Blend Powder').id, ingredient_id: Ingredient.find_by(name: 'strawberry').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Organic Superfood Blend Powder').id, ingredient_id: Ingredient.find_by(name: 'raspberry').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Organic Superfood Blend Powder').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)
