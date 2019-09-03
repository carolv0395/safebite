class CreateAllergenFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :allergen_families do |t|
      t.string :name

      t.timestamps
    end
  end
end
