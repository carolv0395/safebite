class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    connection.execute 'drop table if exists ingredients_products'
    connection.execute 'drop table if exists allergens'
    connection.execute 'drop table if exists ingredients'
    create_table :ingredients do |t|
      t.string :name
      t.boolean :is_allergen
      t.references :allergen_family, foreign_key: true

      t.timestamps
    end
  end
end
