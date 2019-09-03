class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :first_name
      t.string :last_name
      t.string :brand
      t.string :volume
      t.integer :discount
      t.integer :stock
      t.references :category, foreign_key: true
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
