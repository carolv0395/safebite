class CreateOrdersProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_products do |t|
      t.integer :quantity
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
