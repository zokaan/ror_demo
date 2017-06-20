class AddCategoryReferenceToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :category, index: true, foreign_key: true

    # category = Category.create(name: 'Default')
    # products = Product.all

    # products.each do |product|
    #   product.update_attributes(category_id: category.id)
    # end
  end
end
