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

AllergenFamily.create!(name: 'nuts')
AllergenFamily.create!(name: 'lactose')
AllergenFamily.create!(name: 'shellfish')
AllergenFamily.create!(name: 'gluten')
AllergenFamily.create!(name: 'fish & meat')
AllergenFamily.create!(name: 'soy')
AllergenFamily.create!(name: 'seeds')

product_attributes = [
  {
    name: 'Cheez-It Baked Original Cheese Crackers Family',
    brand: 'Cheez-It',
    category: ,
    volume: '21 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description:"Make snack time more fun with Cheez-It Original Baked Snack Crackers, bite-size cheese crackers that are baked to crispy perfection. Cheez-It Baked Snack Crackers are the real deal—made with 100% real cheese that's been carefully aged for a yummy, irresistible taste that’s bursting with real cheese goodness in every crunchy bite. Each perfect square crisp is loaded with bold cheesy flavor that hits your taste buds with every delicious mouthful.",
    photo: "https://images-na.ssl-images-amazon.com/images/I/81oh50vv%2B6L._SL1500_.jpg",
    price: 500
  },
  {
    name: 'Great Value Large White Eggs',
    brand: 'Great Value',
    category: ,
    volume: '36 oz',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "Great Value Large White Eggs are a delicious way to get in your daily recommended amount of protein for a healthy lifestyle. Our tasty eggs have received a Grade A rating from the USDA, so you know you're purchasing a high-quality product. Serve them scrambled alongside some sourdough toast and blueberries, or hard boil a few to take with you for a tasty, wholesome snack on the go.",
    photo: "https://i5.walmartimages.com/asr/df2ea507-1953-4cb9-97b6-a1bc10f3dd19_1.bc951a020f826ffe87cf466c3fc1c130.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF",
    price: 200
  },
  {
    name: 'Fresh Strawberries',
    brand: '',
    category: ,
    volume: '1 lb',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "The sweet, juicy flavor of Fresh Strawberries make them a refreshing and delicious treat. Enjoy them for breakfast, lunch, dinner, or dessert. Use them as topping for pancakes, bake them in a mouthwatering bread, mix them with cucumbers for a light and flavorful salad, or puree them for strawberry shortcake.",
    photo: "https://i5.walmartimages.com/asr/4e7dab6a-c54b-48f7-9bd2-57f5d211501d_1.3ba50bfdf1c7f082056c0f5022edf182.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF",
    price: 200
  },
  {
    name: 'Mission Soft Taco Whole Wheat Tortillas',
    brand: 'Mission',
    category: ,
    volume: '450g',
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: "In addition to their great taste and soft texture, Mission Soft Taco Whole Wheat Tortillas deliver all of the extra benefits of whole grain. Our tortillas are made with 100% whole wheat, so they're naturally satisfying, a great source of whole grain, and high in fiber. And since our tortillas are also free of trans fat and cholesterol, they're a smart addition to any meal.",
    photo: "https://i5.walmartimages.com/asr/20fe1deb-89c7-41de-bc07-8b1d658f1d27_1.ee9f2d68e2d4c6b5fafdfe31d5d59a99.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF",
    price: 300
  }
]

ingredient_attributes =[
  {
    name: 'milk',
    is_allergen: true,
    allergen_family_id: 2
  },
  {
    name: 'soybean',
    is_allergen: true,
    allergen_family_id: 6
  },
  {
    name: 'wheat',
    is_allergen: true,
    allergen_family_id: 4
  },
  {
    name: 'flour',
    is_allergen: true,
    allergen_family_id: 4
  },
  {
    name: 'egg',
    is_allergen: false,
  },
  {
    name: 'cheese',
    is_allergen: true,
    allergen_family_id: 2,
  },
  {
    name: 'orange',
    is_allergen: false,
  },
  {
    name: 'palm oil',
    is_allergen: false,
  },
  {
    name: 'tuna',
    is_allergen: true,
    allergen_family_id: 5,
  },
  {
    name: 'sugar',
    is_allergen: false,
  },
  {
    name: 'cayenne',
    is_allergen: false,
  },
  {
    name: 'peanuts',
    is_allergen: true,
    allergen_family_id: 1,
  },
  {
    name: 'pork',
    is_allergen: true,
    allergen_family_id: 5,
  },
  {
    name: 'cashew',
    is_allergen: true,
    allergen_family_id: 1,
  },
  {
    name: 'walnuts',
    is_allergen: true,
    allergen_family_id: 1,
  },
  {
    name: 'coconut milk',
    is_allergen: false,
  },
  {
    name: 'clams',
    is_allergen: true,
    allergen_family_id: 3,
  },
  {
    name: 'mussels',
    is_allergen: true,
    allergen_family_id: 3,
  },
  {
    name: 'chicken broth',
    is_allergen: true,
    allergen_family_id: 5,
  },
  {
    name: 'pumpkin seeds',
    is_allergen: true,
    allergen_family_id: 7,
  },
  {
    name: 'margarine',
    is_allergen: false,
  },
  {
    name: 'barley',
    is_allergen: true,
    allergen_family_id: 4,
  },
  {
    name: 'rye',
    is_allergen: true,
    allergen_family_id: 4,
  },
  {
    name: 'apple',
    is_allergen: false,
  },
  {
    name: 'cream',
    is_allergen: true,
    allergen_family_id: 2,
  },
  {
    name: 'poppy seeds',
    is_allergen: true,
    allergen_family_id: 7,
  },
  {
    name: 'strawberry',
    is_allergen: true
  },
  {
    name: 'whole wheat flour',
    is_allergen: true,
    allergen_family_id: 4
  },
]

Ingredient.create!(ingredient_attributes)
Product.create!(product_attributes)

Product.all.each do |product|
  Ingredient.order("RANDOM()").limit(rand(5..10)).each do |ingredient|
    IngredientsProduct.create(product: product, ingredient: ingredient)
  end
end


