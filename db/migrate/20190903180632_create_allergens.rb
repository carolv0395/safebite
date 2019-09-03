class CreateAllergens < ActiveRecord::Migration[5.2]
  def change
    create_table :allergens do |t|
      t.references :user, foreign_key: true
      t.references :ingredient, foreign_key: true
<<<<<<< HEAD:db/migrate/20190902160906_create_allergens.rb
=======
      t.references :allergen_family, foreign_key: true
>>>>>>> 73de0c2a8d9ecb11fbed51315a2e15ebfea23518:db/migrate/20190903180632_create_allergens.rb

      t.timestamps
    end
  end
end
