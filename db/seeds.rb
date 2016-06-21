Product.destroy_all

10.times do |n|
  p = Product.create(title: Faker::Commerce.product_name, price: Faker::Commerce.price)
end
