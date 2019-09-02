class CreateJoinTableProductOrder < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :orders do |t|
      t.index [:product_id, :order_id]
      t.integer :quantity
    end
  end
end
