class AddAutoincrementToQuantityColumn < ActiveRecord::Migration
  def up
    change_column :products, :quantity, :integer, default: 1
  end

  def down
    change_column :products, :quantity, :integer, default: 0
  end
end
