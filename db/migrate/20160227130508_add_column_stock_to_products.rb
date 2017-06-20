class AddColumnStockToProducts < ActiveRecord::Migration
  def change
    add_column :products, :stock, :boolean, default: false
  end
end
