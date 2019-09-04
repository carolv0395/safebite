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
    photo: "https://images-na.ssl-images-amazon.com/images/I/81oh50vv%2B6L._SL1500_.jpg",
    price: 5
  },
  {
    name: 'Amazing Bolachas Belgas',
    brand: 'Belgaz',
    category: :cookies_and_snacks,
    volume: '19 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"Make snack time more fun with Cheez-It Original Baked Snack Crackers, bite-size cheese crackers that are baked to crispy perfection. Cheez-It Baked Snack Crackers are the real deal—made with 100% real cheese that's been carefully aged for a yummy, irresistible taste that’s bursting with real cheese goodness in every crunchy bite. Each perfect square crisp is loaded with bold cheesy flavor that hits your taste buds with every delicious mouthful.",
    photo: "https://images-na.ssl-images-amazon.com/images/I/81oh50vv%2B6L._SL1500_.jpg",
    price: 500
  },
  {
    name: 'Great Value Large White Eggs',
    brand: 'Great Value',
    category: :dairy_eggs_and_cheese,
    volume: '36 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Great Value Large White Eggs are a delicious way to get in your daily recommended amount of protein for a healthy lifestyle. Our tasty eggs have received a Grade A rating from the USDA, so you know you're purchasing a high-quality product. Serve them scrambled alongside some sourdough toast and blueberries, or hard boil a few to take with you for a tasty, wholesome snack on the go.",
    photo: "https://i5.walmartimages.com/asr/df2ea507-1953-4cb9-97b6-a1bc10f3dd19_1.bc951a020f826ffe87cf466c3fc1c130.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF",
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
    photo: "https://i5.walmartimages.com/asr/4e7dab6a-c54b-48f7-9bd2-57f5d211501d_1.3ba50bfdf1c7f082056c0f5022edf182.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF",
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
    photo: "https://i5.walmartimages.com/asr/20fe1deb-89c7-41de-bc07-8b1d658f1d27_1.ee9f2d68e2d4c6b5fafdfe31d5d59a99.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF",
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
    allergen_family_id: soy
  },
  {
    name: 'wheat',
    is_allergen: true,
    allergen_family_id: gluten
  },
  {
    name: 'flour',
    is_allergen: true,
    allergen_family_id: gluten
  },
  {
    name: 'egg',
    is_allergen: true
  },
  {
    name: 'cheese',
    is_allergen: true,
    allergen_family_id: lactose
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
    allergen_family_id: fish_and_meat
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
    allergen_family_id: nuts
  },
  {
    name: 'pork',
    is_allergen: true,
    allergen_family_id: fish_and_meat
  },
  {
    name: 'cashew',
    is_allergen: true,
    allergen_family_id: nuts
  },
  {
    name: 'walnuts',
    is_allergen: true,
    allergen_family_id: nuts
  },
  {
    name: 'coconut milk',
    is_allergen: false
  },
  {
    name: 'clams',
    is_allergen: true,
    allergen_family_id: shellfish
  },
  {
    name: 'mussels',
    is_allergen: true,
    allergen_family_id: shellfish
  },
  {
    name: 'chicken broth',
    is_allergen: true,
    allergen_family_id: fish_and_meat
  },
  {
    name: 'pumpkin seeds',
    is_allergen: true,
    allergen_family_id: seeds
  },
  {
    name: 'margarine',
    is_allergen: false
  },
  {
    name: 'barley',
    is_allergen: true,
    allergen_family_id: gluten
  },
  {
    name: 'rye',
    is_allergen: true,
    allergen_family_id: gluten
  },
  {
    name: 'apple',
    is_allergen: false
  },
  {
    name: 'cream',
    is_allergen: true,
    allergen_family_id: lactose
  },
  {
    name: 'poppy seeds',
    is_allergen: true,
    allergen_family_id: seeds
  },
  {
    name: 'strawberry',
    is_allergen: true
  },
  {
    name: 'whole wheat flour',
    is_allergen: true,
    allergen_family_id: gluten
  },
]

Ingredient.create!(ingredient_attributes)
Product.create!(product_attributes)

Product.all.each do |product|
  Ingredient.order("RANDOM()").limit(rand(5..10)).each do |ingredient|
    IngredientsProduct.create(product_id: product.id, ingredient_id: ingredient.id)
  end
end
