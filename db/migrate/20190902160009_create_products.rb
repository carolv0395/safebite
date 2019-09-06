class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category, default: 0
      t.string :volume
      t.integer :discount
      t.integer :stock
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
