class AddPriceToOrdersProducts < ActiveRecord::Migration[5.2]
  def change
    add_monetize :orders_products, :price, currency: { present: false }
  end
end
