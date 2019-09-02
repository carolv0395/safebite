class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :discount
      t.integer :stock
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
