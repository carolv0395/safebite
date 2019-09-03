class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :is_allergen
      t.references :allergen_family, foreign_key: true

      t.timestamps
    end
  end
end
