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
seafood = AllergenFamily.create!(name: 'seafood')
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
    brand: 'Quinta da Fonte',
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
    photo: "https://rainydayfoods.com/pub/media/catalog/product/cache/image/1000x1000/e9c3970ab036de70892d86c6d221abfe/n/e/nelbowmacaronimc.jpg",
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
  },
  {
    name: 'Lambrusco',
    brand: 'Riobello Rosso',
    category: :beer_wine_and_spirits,
    volume: '75 cl',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Italian red wine grape and a wine made principally from the grape. Delicate taste, fresh and sweet taste. 8,5% alcohol. Keep it around 11ºC.",
    photo: "https://upload.wikimedia.org/wikipedia/commons/a/a2/Glass_of_lambrusco_%2819545132502%29.jpg",
    price: 5
  },
  {
    name: 'Bio Beer Gluten Free',
    brand: 'Neumarkter Lammsbrau',
    category: :beer_wine_and_spirits,
    volume: '330 cl',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "First gluten free beer, bio and real beer taste. Lammsbrau was able to remove gluten from barley before bottle the product. Fine option for gluten intolerants.",
    photo: "https://www.singlutenismo.com/wp-content/uploads/cerveza-sin-gluten-neumarkter-lammsbrau.jpg",
    price: 2
  },
  {
    name: 'Condensed Chicken Noodle Soup',
    brand: 'Campbell Soup',
    category: :canned_goods_and_soups,
    volume: '10.75 oz can',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Classic chicken noodle soup crafted with seasoned chicken broth, enriched egg noodles and chicken meat with no antibiotics.",
    photo: "https://amp.businessinsider.com/images/5bc9e22aa977742a2d4fdcab-750-562.jpg",
    price: 4
  },
  {
    name: 'Palmini Low Carb Pasta',
    brand: 'Linguine',
    category: :canned_goods_and_soups,
    volume: '14 oz can',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "No Sugar and Gluten Free. Palmini is a low carb pasta substitute made 100% out of a natural plant known as Hearts of Palm. When this plant is cut and cooked in the proper way, it’s resemblance to regular noodles is remarkable. Not only does it look like pasta, but it can also taste like pasta if you add the proper sauce! Great low carb pasta option for Keto and Paleo diets.",
    photo: "https://media1.popsugar-assets.com/files/thumbor/Bu_IJslOstLy0dLBqzdGXlI5oyQ/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/03/26/856/n/1922729/08efc1305c9a7e9941dd59.51789901_/i/Palmini-Low-Carb-Pasta-Review.jpg",
    price: 3
  },
  {
    name: 'Absolut Vodka Sweden Original',
    brand: 'Absolut',
    category: :beer_wine_and_spirits,
    volume: '1.75 L',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Absolut Vodka is a Swedish vodka made exclusively from natural ingredients, and unlike some other vodkas, it doesn’t contain any added sugar. In fact Absolut is as clean as vodka can be. Still, it has a certain taste: Rich, full-bodied and complex, yet smooth and mellow with a distinct character of grain, followed by a hint of dried fruit. In 1879, Lars Olsson Smith pioneered the continuous distillation: Instead of the usual three or four times, the vodka was distilled an infinite number of times. Today, just as then, Absolut is produced in Åhus in southern Sweden. This is also the region where L.O. Smith was born and where the main ingredients wheat and water come from. We call this our One Source process.",
    photo: "https://i.pinimg.com/originals/99/51/ba/9951baacc82f6eb4ea1d9b3f8583fcf3.jpg",
    price: 28
  },
  {
    name: 'Serra da Estrela Cheese',
    brand: 'Vale Da Estrela',
    category: :dairy_eggs_and_cheese,
    volume: '500 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "With a buttery or dry dough, yellow colour and intense flavour, Serra da Estrela cheese is made exclusively with milk from Bordaleira breed sheep, and puts all the generosity of Serra da Estrela on the table.",
    photo: "https://media-manager.noticiasaominuto.com/1920/naom_5bc6df6ad85ce.jpg",
    price: 15
  },
  {
    name: 'Mango',
    brand: 'Palmer',
    category: :fruits_and_vegetables,
    volume: '600 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "The sweet, juicy flavor of mango make them a refreshing and delicious treat. Enjoy them for breakfast, lunch, dinner, or dessert. Use them in smoothies mixed with other fruits, on salads, or make a great mango mousse!",
    photo: "https://foodforward.org/wp-content/uploads/2018/04/mango-min.png",
    price: 2
  },
  {
    name: 'Fig',
    brand: 'Mogadouro de Baixo',
    category: :fruits_and_vegetables,
    volume: '600 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Delicious, sweet fig fruit is one of the popular fruits enjoyed since ancient times. Fig is rich in natural health benefiting phytonutrients, antioxidants, and vitamins. Entirely developed and ripe fig features bell or pear shape with succulent, juicy flesh inside.",
    photo: "https://img.vixdata.io/pd/jpg-large/en/sites/default/files/figo-fruta-0117-1400x800.jpg",
    price: 5
  },
  {
    name: 'Alcobaca Apple',
    brand: 'IGP Maca Alcobaca',
    category: :fruits_and_vegetables,
    volume: '1000 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "IGP Maçã de Alcobaça is an apple from Portugal, the fruit of which originates from cultivars of Malus domestica Boekh, of the varieties Royal Gala, Delicious, Jonagold, Fuji, Casa Nova de Alcobaça, Golden Delicious, Granny Smith and Reineta Parda.",
    photo: "https://www.flfrevista.pt/file/2016/09/ma%C3%A7%C3%A3_alcoba%C3%A7a-IGP-735x400.jpg",
    price: 3
  },
  {
    name: 'Algarve Orange',
    brand: 'Naturally Sweet Citrus',
    category: :fruits_and_vegetables,
    volume: '700 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "The Algarve is the region in Europe with the most sun exposure. The oranges absorb all this heat and light and conserve them up until it reaches your table.",
    photo: "https://www.portugalresident.com/wp-content/uploads/2019/02/orange.jpg",
    price: 3
  },
  {
    name: 'Lemon',
    brand: 'Naturally Sweet Citrus',
    category: :fruits_and_vegetables,
    volume: '500 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Lemons are high in vitamin C, fiber, and various beneficial plant compounds. These nutrients are responsible for several health benefits. Theories suggest that drinking hot water with lemon will help you lose weight.",
    photo: "https://images-na.ssl-images-amazon.com/images/I/718jRtF-PaL._SL1500_.jpg",
    price: 2
  },
  {
    name: 'Peanut Cookies',
    brand: 'D. Maria',
    category: :cookies_and_snacks,
    volume: '234 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Gluten free peanut cookies. These flourless peanut butter cookies only take one bowl and are a breeze to whip up. Their ultra-rich flavor makes them perfect for peanut butter lovers!",
    photo: "https://homemadehooplah.com/wp-content/uploads/2017/10/4-ingredient-peanut-butter-cookies-2.jpg",
    price: 1
  },
  {
    name: 'Plain Greek Yogurt',
    brand: 'Fage',
    category: :breakfast_and_cereal,
    volume: '17.6 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Gluten free, Protein-Rich and no Added Sugar. FAGE Total 5% Plain strained yoghurt that's unbelievably thick and creamy. It's a whole milk Greek yogurt that features the famously rich FAGE Total taste and texture.",
    photo: "https://soufflebombay.com/wp-content/uploads/2019/02/Blueberry-Swirl-Yogurt.jpg",
    price: 3
  },
  {
    name: 'Soya Yogurt',
    brand: 'Alpro',
    category: :breakfast_and_cereal,
    volume: '500 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Alpro Soya simply plain plant-based alternative to yogurt. 100% plant-based, naturally lactose free. Free from dairy and gluten. Vegan.To call it 'plain', is a bit of an injustice. With a soft, mild and balanced taste and plenty of plant protein, really it's a beautiful thing.",
    photo: "https://maisoncupcake.com/mcc/wp-content/uploads/2014/10/Alpro-packshot1.jpg",
    price: 3
  },
  {
    name: 'Peanut Butter',
    brand: 'Prozis',
    category: :breakfast_and_cereal,
    volume: '450 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "High protein and high fiber. Peanut butter and fresh fruits or veggies is the perfect combo. Slather the spread on apples, celery, bananas and more.",
    photo: "https://i.ytimg.com/vi/PjTb_c-mEcI/maxresdefault.jpg",
    price: 4
  },
  {
    name: 'Frozen Mussels',
    brand: 'Pescanova',
    category: :frozen_foods,
    volume: '500 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Mussles are shellfish seafood which can be chilled, stuffed, skewered and served plain, with beans, on toasts, in soups.",
    photo: "https://www.simplyrecipes.com/wp-content/uploads/2012/03/mussels-white-wine-sauce-horiz-a-1200.jpg",
    price: 7
  },
  {
    name: 'Frozen Salmon',
    brand: 'Iglo',
    category: :frozen_foods,
    volume: '1100 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Salmon is rich in Omega-3 fatty acids, great source of protein, high in B vitamins, good source of potassium, loaded with selenium. It's a super food to reduce the risk of heart disease and weight control.",
    photo: "https://nutritiouslife.com/wp-content/uploads/2016/09/Parchment-Baked-Salmon-1302x863.jpg",
    price: 9
  },
  {
    name: 'Smoked Salmon',
    brand: 'Skandia',
    category: :meat_and_seafood,
    volume: '80 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Most Awarded Pre-Sliced Smoked Salmon (Natural). 100% NATURAL. Cold smoked, 100% natural Atlantic salmon fillets from the pristine waters of the Chilean Patagonia. No artificial flavoring, coloring or preservatives. Circle-K Kosher certified, gluten free and high in Omega 3. May be kept in the freezer for up to 12 months.",
    photo: "https://images-na.ssl-images-amazon.com/images/I/8129O7SG3hL._SL1500_.jpg",
    price: 5
  },
  {
    name: 'Anchovy in Olive Oil',
    brand: 'Lorea',
    category: :canned_goods_and_soups,
    volume: '100 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Anchovy in Virgin Olive Oil. Anchovies are a notably rich source of omega 3 fats. Omega 3s help to decrease inflammation and maintain the health of all the cells in the body, especially the fatty tissues of the eyes, brain, and nervous system.",
    photo: "https://obagastronomia.com.br/wp-content/uploads/2016/09/Anchova-1.jpg",
    price: 4
  },
  {
    name: 'Tuna (Natural)',
    brand: 'Tuna Land',
    category: :meat_and_seafood,
    volume: '100 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Tuna, for its part, is a source of high-quality protein with almost no fat. It contains all essential amino acids required by the body for growth and maintenance of lean muscle tissue.",
    photo: "https://www.thespruceeats.com/thmb/ujasAHkpwjPaRS7S6LdiH_iiqPM=/2848x2848/smart/filters:no_upscale()/spice-rubbed-seared-tuna-steaks-balsamic-101974-13-5b46531a46e0fb003778c140.jpg",
    price: 4
  },
  {
    name: 'Tuna in Olive Oil',
    brand: 'Bom Petisco',
    category: :canned_goods_and_soups,
    volume: '120 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Tuna, for its part, is a source of high-quality protein with almost no fat. Canned tuna can be a good source of heart-healthy omega-3 fatty acids, with 150 milligrams or more per four-ounce serving.",
    photo: "http://cdn.24.co.za/files/Cms/General/d/3678/804c25bc6ed34e4bbdeb41f7b55196a1.jpg",
    price: 2
  },
  {
    name: 'Pure white bread',
    brand: 'Bimbo Rusty',
    category: :breakfast_and_cereal,
    volume: '400 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "A delicious bread with a very light center with crunchy crust. You may substitute butter or vegetable oil for the lard if you wish.",
    photo: "https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/paul_hollywoods_crusty_83536_16x9.jpg",
    price: 1
  },
  {
    name: 'Dark bread',
    brand: 'Rye M.',
    category: :breakfast_and_cereal,
    volume: '250 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "A study in the American Journal of Clinical Nutrition found that eating rye leads to better blood-sugar control compared to wheat. Rye bread is packed with magnesium, which helps control blood pressure and optimize heart health. Its high levels of soluble fibre can also reduce cholesterol.",
    photo: "https://nordicfoodliving.com/wp-content/uploads/2015/09/20198183221_eb41aa8508_b.jpg",
    price: 3
  },
  {
    name: 'S. Jorge Island Cheese',
    brand: 'Nova Açores',
    category: :dairy_eggs_and_cheese,
    volume: '400 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "São Jorge is a Portuguese cheese from an island of the same name, located 900 miles from the west coast of Portugal and part of Azores archipelago.",
    photo: "https://images.e-konomista.pt/articles/850_400_big-yellow-goat-cheese-heads_1504277350.jpg",
    price: 3
  },
  {
    name: 'Ricotta Cheese',
    brand: 'Mimosa',
    category: :dairy_eggs_and_cheese,
    volume: '250 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Ricotta is an Italian whey cheese made from sheep, cow, goat, or Italian water buffalo milk whey left over from the production of other cheeses. Like other whey cheeses, it is made by coagulating the proteins that remain after the casein has been used to make cheese, notably albumin and globulin.",
    photo: "https://www.thespruceeats.com/thmb/uvaQq55Glyfqdff8IOfNXVzHFgg=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/106908888-58aefb225f9b58a3c9287cf3.jpg",
    price: 2
  },
  {
    name: 'Mozzarella Cheese',
    brand: 'Galbany',
    category: :dairy_eggs_and_cheese,
    volume: '250 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Apparently, an ounce of mozzarella contains 18% of your daily intake of calcium - which aids the health of your bone structure and even manages to strengthen your pearly whites! 2. This velvety smooth cheese also contains phosphorus, a mineral that allows the body to use the aforementioned calcium.",
    photo: "https://www.zingermanscreamery.com/app/uploads/2018/04/zing-creamery-285.jpg",
    price: 3
  },
  {
    name: 'Broccoli',
    brand: '',
    category: :fruits_and_vegetables,
    volume: '400 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Broccoli is an edible green plant in the cabbage family whose large flowering head and stalk is eaten as a vegetable.",
    photo: "https://nit.pt/wp-content/uploads/2018/05/585fc00b9c6b9d67e19ad637391936bd-754x394.jpeg",
    price: 2
  },
  {
    name: 'Frozen Broccoli',
    brand: 'Bonduelle',
    category: :frozen_foods,
    volume: '400 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Cover the pot and boil the florets in the water for 2 minutes. Then, transfer the florets to a bowl of ice water and let them fully cool. Once they're cooled off, put the florets in a plastic freezer bag and store them in the freezer for up to 9 months.",
    photo: "https://www.thespruceeats.com/thmb/YyyMF4DhOpY8Vx750FPBvxBDLIc=/4288x2848/filters:fill(auto,1)/sauteed-broccoli-482862-Hero-5b96d87146e0fb0050721d12.jpg",
    price: 2
  },
  {
    name: 'Tomatoes',
    brand: '',
    category: :fruits_and_vegetables,
    volume: '250 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Tomatoes are the major dietary source of the antioxidant lycopene, which has been linked to many health benefits, including reduced risk of heart disease and cancer. They are also a great source of vitamin C, potassium, folate, and vitamin K.",
    photo: "https://img.etimg.com/thumb/msid-68232146,width-643,imgsize-200388,resizemode-4/tomatoes-gettyimages-847335.jpg",
    price: 1
  },
  {
    name: 'Avocado',
    brand: 'Lavocado',
    category: :fruits_and_vegetables,
    volume: '150 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Avocados are a stone fruit with a creamy texture that grow in warm climates. Their potential health benefits include improving digestion, decreasing risk of depression, and protection against cancer.",
    photo: "https://foodrevolution.org/wp-content/uploads/iStock-854389420-tashka2000-featured-Recovered.jpg",
    price: 3
  },
  {
    name: 'Lettuce',
    brand: 'Rell Agriculture',
    category: :fruits_and_vegetables,
    volume: '250 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Lettuce provides calcium, potassium, vitamin C, and folate. The nutrients in iceberg lettuce can help you to meet the standard daily requirements for several vitamins and minerals. They include: Vitamin C, a powerful antioxidant that helps keep your immune system healthy.",
    photo: "https://cdn-prod.medicalnewstoday.com/content/images/articles/319/319725/romaine-lettuce-on-wooden-chopping-board.jpg",
    price: 1
  },
  {
    name: 'Plain Iceberg Cabbage',
    brand: 'Rell Agriculture',
    category: :grains_pasta_and_sides,
    volume: '250 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Lettuce provides calcium, potassium, vitamin C, and folate. The nutrients in iceberg lettuce can help you to meet the standard daily requirements for several vitamins and minerals. They include: Vitamin C, a powerful antioxidant that helps keep your immune system healthy.",
    photo: "https://www.jesmondfruitbarn.com.au/wp-content/uploads/2016/10/Jesmond-Fruit-Barn-Cabbage.jpg",
    price: 2
  },
  {
    name: 'Carrots',
    brand: 'Rell Agriculture',
    category: :fruits_and_vegetables,
    volume: '350 gr',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "It is crunchy, tasty, and highly nutritious. Carrots are a particularly good source of beta carotene, fiber, vitamin K1, potassium, and antioxidants ( 1 ). They also have a number of health benefits. They're a weight-loss-friendly food and have been linked to lower cholesterol levels and improved eye health.",
    photo: "https://nutritionfacts.org/app/uploads/2019/01/carrots-3399806_1920.jpg",
    price: 2
  },
  {
    name: 'FarfalleGluten Free Pasta',
    brand: 'Jovial',
    category: :grains_pasta_and_sides,
    volume: '12 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Crafted in Italy using time-honored production methods and carefully selected varieties of rice, our brown rice farfalle pasta is as close to traditional as gluten free can be. The future of gluten free is delicious, wholesome, and completely satisfying food.",
    photo: "https://jovialfoods.com/wp-content/uploads/2016/03/Jovial_GFPastaFarfalleHerbs-0068_1200x1200.jpg",
    price: 6
  },
  {
    name: 'Almond Milk No Sugar',
    brand: 'Alpro',
    category: :breakfast_and_cereal,
    volume: '250 ml',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Contains almonds and may contain traces of hazelnuts. Naturally lactose free & dairy free. Gluten free. The almond milk conatins vitamin D, calcium and protein, making them more similar to regular milk in nutritional content. However, almond milk is naturally rich in several vitamins and minerals, especially vitamin E.",
    photo: "https://cdn-prod.medicalnewstoday.com/content/images/articles/318/318612/almond-milk.jpg",
    price: 3
  },
  {
    name: 'Guinness Beer (pack 6)',
    brand: 'Guinness',
    category: :beer_wine_and_spirits,
    volume: '6 x 33cl',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Guinness stout is made from water, barley, roast malt extract, hops, and brewer's yeast. A portion of the barley is roasted to give Guinness its dark colour and characteristic taste.",
    photo: "https://www.guinnesswebstore.com/media/catalog/category/glassware_heading_normal_1.jpg",
    price: 5
  },
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
    allergen_family_id: seafood.id
  },
  {
    name: 'shrimp',
    is_allergen: true,
    allergen_family_id: seafood.id
  },
  {
    name: 'mussels',
    is_allergen: true,
    allergen_family_id: seafood.id
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
  },
  {
    name: 'millet',
    is_allergen: false
  },
  {
    name: 'rice',
    is_allergen: false
  },
  {
    name: 'corn',
    is_allergen: false
  },
  {
    name: 'beans',
    is_allergen: false
  },
  {
    name: 'onion',
    is_allergen: false
  },
  {
    name: 'peppers',
    is_allergen: false
  },
  {
    name: 'palm noodles',
    is_allergen: false
  },
  {
    name: 'eggplant',
    is_allergen: false
  },
  {
    name: 'tomatoes',
    is_allergen: false
  },
  {
    name: 'potatoes',
    is_allergen: false
  },
  {
    name: 'veggies',
    is_allergen: false
  },
  {
    name: 'vodka',
    is_allergen: false
  },
  {
    name: 'chicken',
    is_allergen: false
  },
  {
    name: 'eggs',
    is_allergen: true,
    allergen_family_id: lactose.id
  },
  {
    name: 'mango',
    is_allergen: false
  },
  {
    name: 'fig',
    is_allergen: false
  },
  {
    name: 'apple',
    is_allergen: false
  },
  {
    name: 'orange',
    is_allergen: false
  },
  {
    name: 'lemon',
    is_allergen: false
  },
  {
    name: 'butter',
    is_allergen: true,
    allergen_family_id: lactose.id
  },
  {
    name: 'salmon',
    is_allergen: true,
    allergen_family_id: fish.id
  },
  {
    name: 'anchovy',
    is_allergen: true,
    allergen_family_id: fish.id
  },
  {
    name: 'olive oil',
    is_allergen: false,
  },
  {
    name: 'sunflower oil',
    is_allergen: true,
    allergen_family_id: seeds.id
  },
  {
    name: 'white bread flour',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'sunflower seeds',
    is_allergen: true,
    allergen_family_id: seeds.id
  },
  {
    name: 'white bread flour',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
  {
    name: 'sunflower seeds',
    is_allergen: true,
    allergen_family_id: seeds.id
  },
  {
    name: 'broccoli',
    is_allergen: false
  },
  {
    name: 'avocado',
    is_allergen: false
  },
  {
    name: 'lettuce',
    is_allergen: false
  },
  {
    name: 'iceberg cabbage',
    is_allergen: false
  },
  {
    name: 'carrots',
    is_allergen: false
  },
  {
    name: 'organic brown rice flour',
    is_allergen: false
  },
  {
    name: 'almonds',
    is_allergen: true,
    allergen_family_id: nuts.id
  },
  {
    name: 'agave',
    is_allergen: false
  }
];

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
IngredientsProduct.create(product_id: Product.find_by(name: 'Danish Butter Cookie').id, ingredient_id: Ingredient.find_by(name: 'butter').id)

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

#Lambrusco
IngredientsProduct.create(product_id: Product.find_by(name: 'Lambrusco').id, ingredient_id: Ingredient.find_by(name: 'wine').id)

#Bio Beer Gluten Free
IngredientsProduct.create(product_id: Product.find_by(name: 'Bio Beer Gluten Free').id, ingredient_id: Ingredient.find_by(name: 'rice').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Bio Beer Gluten Free').id, ingredient_id: Ingredient.find_by(name: 'millet').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Bio Beer Gluten Free').id, ingredient_id: Ingredient.find_by(name: 'corn').id)

#Palmini Low Carb Pasta
IngredientsProduct.create(product_id: Product.find_by(name: 'Palmini Low Carb Pasta').id, ingredient_id: Ingredient.find_by(name: 'palm noodles').id)

# Absolut Vodka Sweden Original
IngredientsProduct.create(product_id: Product.find_by(name: 'Absolut Vodka Sweden Original').id, ingredient_id: Ingredient.find_by(name: 'vodka').id)

# Queijo Serra da Estrela DOP
IngredientsProduct.create(product_id: Product.find_by(name: 'Serra da Estrela Cheese').id, ingredient_id: Ingredient.find_by(name: 'cheese').id)

#Condensed Chicken Noodle Soup
IngredientsProduct.create(product_id: Product.find_by(name: 'Condensed Chicken Noodle Soup').id, ingredient_id: Ingredient.find_by(name: 'eggs').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Condensed Chicken Noodle Soup').id, ingredient_id: Ingredient.find_by(name: 'wheat').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Condensed Chicken Noodle Soup').id, ingredient_id: Ingredient.find_by(name: 'chicken').id)

#Mango
IngredientsProduct.create(product_id: Product.find_by(name: 'Mango').id, ingredient_id: Ingredient.find_by(name: 'mango').id)

#Fig
IngredientsProduct.create(product_id: Product.find_by(name: 'Fig').id, ingredient_id: Ingredient.find_by(name: 'fig').id)

#Alcobaca Apple
IngredientsProduct.create(product_id: Product.find_by(name: 'Alcobaca Apple').id, ingredient_id: Ingredient.find_by(name: 'apple').id)

#Algarve Orange
IngredientsProduct.create(product_id: Product.find_by(name: 'Algarve Orange').id, ingredient_id: Ingredient.find_by(name: 'orange').id)

#Lemon
IngredientsProduct.create(product_id: Product.find_by(name: 'Lemon').id, ingredient_id: Ingredient.find_by(name: 'lemon').id)

#Peanut Cookies
IngredientsProduct.create(product_id: Product.find_by(name: 'Peanut Cookies').id, ingredient_id: Ingredient.find_by(name: 'peanuts').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Peanut Cookies').id, ingredient_id: Ingredient.find_by(name: 'eggs').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Peanut Cookies').id, ingredient_id: Ingredient.find_by(name: 'butter').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Peanut Cookies').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)

#Plain Greek Yogurt
IngredientsProduct.create(product_id: Product.find_by(name: 'Plain Greek Yogurt').id, ingredient_id: Ingredient.find_by(name: 'milk').id)

#Soya Yogurt
IngredientsProduct.create(product_id: Product.find_by(name: 'Soya Yogurt').id, ingredient_id: Ingredient.find_by(name: 'soybean').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Soya Yogurt').id, ingredient_id: Ingredient.find_by(name: 'salt').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Soya Yogurt').id, ingredient_id: Ingredient.find_by(name: 'water').id)

#Peanut Butter
IngredientsProduct.create(product_id: Product.find_by(name: 'Peanut Butter').id, ingredient_id: Ingredient.find_by(name: 'peanuts').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Peanut Butter').id, ingredient_id: Ingredient.find_by(name: 'sugar').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Peanut Butter').id, ingredient_id: Ingredient.find_by(name: 'honey').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Peanut Butter').id, ingredient_id: Ingredient.find_by(name: 'butter').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Peanut Butter').id, ingredient_id: Ingredient.find_by(name: 'palm oil').id)

#Frozen Mussels
IngredientsProduct.create(product_id: Product.find_by(name: 'Frozen Mussels').id, ingredient_id: Ingredient.find_by(name: 'mussels').id)

#Frozen Salmon
IngredientsProduct.create(product_id: Product.find_by(name: 'Frozen Salmon').id, ingredient_id: Ingredient.find_by(name: 'salmon').id)

#Smoked Salmon
IngredientsProduct.create(product_id: Product.find_by(name: 'Smoked Salmon').id, ingredient_id: Ingredient.find_by(name: 'salmon').id)

#Anchovy in Olive Oil
IngredientsProduct.create(product_id: Product.find_by(name: 'Anchovy in Olive Oil').id, ingredient_id: Ingredient.find_by(name: 'anchovy').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Anchovy in Olive Oil').id, ingredient_id: Ingredient.find_by(name: 'olive oil').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Anchovy in Olive Oil').id, ingredient_id: Ingredient.find_by(name: 'water').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Anchovy in Olive Oil').id, ingredient_id: Ingredient.find_by(name: 'salt').id)

#Tuna (Natural)
IngredientsProduct.create(product_id: Product.find_by(name: 'Tuna (Natural)').id, ingredient_id: Ingredient.find_by(name: 'tuna').id)

#Tuna in Olive Oil
IngredientsProduct.create(product_id: Product.find_by(name: 'Tuna in Olive Oil').id, ingredient_id: Ingredient.find_by(name: 'tuna').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Tuna in Olive Oil').id, ingredient_id: Ingredient.find_by(name: 'olive oil').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Tuna in Olive Oil').id, ingredient_id: Ingredient.find_by(name: 'water').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Tuna in Olive Oil').id, ingredient_id: Ingredient.find_by(name: 'salt').id)

#Pure white bread
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'white bread flour').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'sunflower oil').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'water').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'salt').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'butter').id)

#Dark bread
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'rye').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'water').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'salt').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'sunflower seeds').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Pure white bread').id, ingredient_id: Ingredient.find_by(name: 'wheat').id)

#S. Jorge Island Cheese
IngredientsProduct.create(product_id: Product.find_by(name: 'S. Jorge Island Cheese').id, ingredient_id: Ingredient.find_by(name: 'cheese').id)

#Ricotta Cheese
IngredientsProduct.create(product_id: Product.find_by(name: 'Ricotta Cheese').id, ingredient_id: Ingredient.find_by(name: 'cheese').id)

#Mozzarella Cheese
IngredientsProduct.create(product_id: Product.find_by(name: 'Mozzarella Cheese').id, ingredient_id: Ingredient.find_by(name: 'cheese').id)

#Broccoli
IngredientsProduct.create(product_id: Product.find_by(name: 'Broccoli').id, ingredient_id: Ingredient.find_by(name: 'broccoli').id)

#Frozen Broccoli
IngredientsProduct.create(product_id: Product.find_by(name: 'Frozen Broccoli').id, ingredient_id: Ingredient.find_by(name: 'broccoli').id)

#Tomatoes
IngredientsProduct.create(product_id: Product.find_by(name: 'Tomatoes').id, ingredient_id: Ingredient.find_by(name: 'tomatoes').id)

#Avocado
IngredientsProduct.create(product_id: Product.find_by(name: 'Avocado').id, ingredient_id: Ingredient.find_by(name: 'avocado').id)

#Lettuce
IngredientsProduct.create(product_id: Product.find_by(name: 'Lettuce').id, ingredient_id: Ingredient.find_by(name: 'lettuce').id)

#Plain Iceberg Cabbage
IngredientsProduct.create(product_id: Product.find_by(name: 'Plain Iceberg Cabbage').id, ingredient_id: Ingredient.find_by(name: 'iceberg cabbage').id)

#Carrots
IngredientsProduct.create(product_id: Product.find_by(name: 'Carrots').id, ingredient_id: Ingredient.find_by(name: 'carrots').id)

#FarfalleGluten Free Pasta
IngredientsProduct.create(product_id: Product.find_by(name: 'FarfalleGluten Free Pasta').id, ingredient_id: Ingredient.find_by(name: 'organic brown rice flour').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'FarfalleGluten Free Pasta').id, ingredient_id: Ingredient.find_by(name: 'water').id)

#Almond Milk No Sugar
IngredientsProduct.create(product_id: Product.find_by(name: 'Almond Milk No Sugar').id, ingredient_id: Ingredient.find_by(name: 'water').id)
IngredientsProduct.create(product_id: Product.find_by(name: 'Almond Milk No Sugar').id, ingredient_id: Ingredient.find_by(name: 'almonds').id)

#Guinness Beer (pack 6)
IngredientsProduct.create(product_id: Product.find_by(name: 'Guinness Beer (pack 6)').id, ingredient_id: Ingredient.find_by(name: 'barley').id)
