class CreateIngredientsProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients_products do |t|
      t.references :product
      t.references :ingredient

      t.timestamps
    end
  end
end
