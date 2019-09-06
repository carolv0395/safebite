class AddCategoriesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :category, :integer
  end
end
