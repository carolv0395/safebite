# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_03_180634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergen_families", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allergens", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ingredient_id"
    t.bigint "allergen_family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergen_family_id"], name: "index_allergens_on_allergen_family_id"
    t.index ["ingredient_id"], name: "index_allergens_on_ingredient_id"
    t.index ["user_id"], name: "index_allergens_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.boolean "is_allergen"
    t.bigint "allergen_family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergen_family_id"], name: "index_ingredients_on_allergen_family_id"
  end

  create_table "ingredients_products", force: :cascade do |t|
    t.bigint "products_id"
    t.bigint "ingredients_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredients_id"], name: "index_ingredients_products_on_ingredients_id"
    t.index ["products_id"], name: "index_ingredients_products_on_products_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_status"
    t.bigint "user_id"
    t.jsonb "payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "orders_products", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "product_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.index ["order_id"], name: "index_orders_products_on_order_id"
    t.index ["product_id"], name: "index_orders_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "brand"
    t.integer "category", default: 0
    t.string "volume"
    t.integer "discount"
    t.integer "stock"
    t.text "description"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "allergens", "allergen_families"
  add_foreign_key "allergens", "ingredients"
  add_foreign_key "allergens", "users"
  add_foreign_key "ingredients", "allergen_families"
  add_foreign_key "orders", "users"
  add_foreign_key "orders_products", "orders"
  add_foreign_key "orders_products", "products"
end
