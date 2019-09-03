class CreateIngredientsProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients_products do |t|
      t.references :product, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
