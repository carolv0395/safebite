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
AllergenFamily.create!(name: 'fish')
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
    description: '',
    photo: ,
    price: Faker::Number.between(from: 1, to: 5)
  },
  {
    name: ,
    brand: ,
    category: ,
    volume: ,
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: ,
    photo: ,
    price: Faker::Number.between(from: 1, to: 5)
  },
  {
    name: ,
    brand: ,
    category: ,
    volume: ,
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: ,
    photo: ,
    price: Faker::Number.between(from: 1, to: 5)
  }
  {
    name: ,
    brand: ,
    category: ,
    volume: ,
    discount: 0,
    stock: Faker::Number.between(from: 0, to: 200),
    description: ,
    photo: ,
    price: Faker::Number.between(from: 1, to: 5)
  }
]

ingredient_attributes =[
  {
    name: 'milk',
    is_allergen: true,
    allergen_family_id: 2,
  },
  {
    name: 'soybean',
    is_allergen: true,
    allergen_family_id: 6,
  },
  {
    name: 'wheat',
    is_allergen: true,
    allergen_family_id: 4,
  },
  {
    name: 'flour',
    is_allergen: true,
    allergen_family_id: 4,
  },
  {
    name: 'wheat',
    is_allergen: true,
    allergen_family_id: 4,
  },
  {
    name: 'palm oil',
    is_allergen: false,
  }
]
