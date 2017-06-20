class AddQuantityToProducts < ActiveRecord::Migration
  def change
    add_column :products, :quantity, :integer, default: 0, unique: true
  end
end
