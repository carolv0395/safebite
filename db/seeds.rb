# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
AllergenFamily.destroy_all
Allergen.destroy_all
Ingredient.destroy_all
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
fish_and_meat = AllergenFamily.create!(name: 'fish & meat')
soy = AllergenFamily.create!(name: 'soy')
seeds = AllergenFamily.create!(name: 'seeds')

product_attributes = [
  {
    name: 'Cheez-It Baked Original Cheese Crackers Family',
    brand: 'Cheez-It',
    category: :cookies_and_snacks,
    volume: '21 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"Make snack time more fun with Cheez-It Original Baked Snack Crackers, bite-size cheese crackers that are baked to crispy perfection. Cheez-It Baked Snack Crackers are the real deal—made with 100% real cheese that's been carefully aged for a yummy, irresistible taste that’s bursting with real cheese goodness in every crunchy bite. Each perfect square crisp is loaded with bold cheesy flavor that hits your taste buds with every delicious mouthful.",
    photo: "https://images.pexels.com/photos/1441067/pexels-photo-1441067.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 5
  },
  {
    name: 'Nature Valley Granola Bars Variety Pack',
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
    name: "Ben & Jerry's Ice Cream Half Bake",
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
    name: "Minute Maid 100'%' Orange Juice",
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
    name: "Apothic Red Wine",
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
    name: "Smithfield Fresh Pork Center Cut Loin, Boneless",
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
    name: 'Del Monte Fresh Cut Blue Lake Cut Green Beans',
    brand: 'Del Monte',
    category: :canned_goods_and_soups,
    volume: '14 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"Del Monte Fresh Cut Blue Lake Cut Green Beans are picked at the peak of ripeness then packed within hours to lock in the nutrition and the crisp, fresh taste. Our green beans contain just three simple ingredients: green beans, water and sea salt. Serve warmed and dusted with fresh ground pepper as a side, or use in a savory casserole. Del Monte works hard to cultivate the freshest, most nutritious fruits and vegetable to use in every one of our products. When you trust Del Monte, you can be sure what you're buying is the peak of quality and nutrition!",
    photo: "https://images.pexels.com/photos/255469/pexels-photo-255469.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 5
  },
  {
    name: 'Royal Dansk Danish Butter Cookie',
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
    name: 'Great Value Large White Eggs',
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
    name: 'Mission Soft Taco Whole Wheat Tortillas',
    brand: 'Mission',
    category: :grains_pasta_and_sides,
    volume: '450g',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "In addition to their great taste and soft texture, Mission Soft Taco Whole Wheat Tortillas deliver all of the extra benefits of whole grain. Our tortillas are made with 100% whole wheat, so they're naturally satisfying, a great source of whole grain, and high in fiber. And since our tortillas are also free of trans fat and cholesterol, they're a smart addition to any meal.",
    photo: "https://images.pexels.com/photos/2092507/pexels-photo-2092507.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    price: 3
  }
]

ingredient_attributes =[
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
    allergen_family_id: fish_and_meat.id
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
    is_allergen: true,
    allergen_family_id: fish_and_meat.id
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
    name: 'mussels',
    is_allergen: true,
    allergen_family_id: shellfish.id
  },
  {
    name: 'chicken broth',
    is_allergen: true,
    allergen_family_id: fish_and_meat.id
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
    name: 'whole wheat flour',
    is_allergen: true,
    allergen_family_id: gluten.id
  },
]

Ingredient.create!(ingredient_attributes)
Product.create!(product_attributes)

Product.all.each do |product|
  Ingredient.order("RANDOM()").limit(rand(5..10)).each do |ingredient|
    IngredientsProduct.create(product_id: product.id, ingredient_id: ingredient.id)
  end
end
