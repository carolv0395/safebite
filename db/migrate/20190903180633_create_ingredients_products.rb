class CreateIngredientsProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients_products do |t|
      t.references :products
      t.references :ingredients

      t.timestamps
    end
  end
end
