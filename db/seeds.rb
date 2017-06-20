# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Product.create(name: 'Product 1', price: 1, description: 'Desc 1')
# Product.create(name: 'Product 2', price: 2, description: 'Desc 2')
# Product.create(name: 'Product 3', price: 3, description: 'Desc 3')
# Product.create(name: 'Product 4', price: 4, description: 'Desc 4')
# Product.create(name: 'Product 5', price: 5, description: 'Desc 5')

User.create(
  username: 'IvanKovac',
  email: 'kova.etf@gmail.com',
  password: '123456',
  password_confirmation: '123456'
)

User.create(
  username: 'Ivan',
  email: 'ivan.kovac@klika.com',
  password: '123456',
  password_confirmation: '123456'
)

User.create(
  username: 'Admin',
  email: 'ivan.kovac2@klika.com',
  password: '123456',
  password_confirmation: '123456',
  role: 1
)

Category.create(name: 'Phones')
Category.create(name: 'Electronics')
Category.create(name: 'Clothes')
Category.create(name: 'Food')
Category.create(name: 'Drinks')

20.times do |index|
  Product.create(
    name: "Product #{index}",
    price: [20, 50, 80, 120, 150, 180].sample,
    description: "Desc #{index}",
    stock: [true, false].sample, # sample metoda uzima random vrijednost iz niza
    category: Category.all.sample
    )
end
