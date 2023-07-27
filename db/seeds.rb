# db/seeds.rb

puts 'seeding db...'

# Make sure to require 'faker'
require 'faker'

# Seed data for Customers
15.times do
  Customer.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8, max_length: 20)
  )
end

# Seed data for Sellers
10.times do
  Seller.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8, max_length: 20),
    shop_name: Faker::Company.name
  )
end

# Seed data for Shops
10.times do 
  Shop.create!(
    name: Faker::Company.name,
    seller_id: rand(1..10),  # Generate random seller_id
    description: Faker::Lorem.paragraph
  )
end

# Seed data for Carts
10.times do 
  Cart.create!(
    customer_id: rand(1..10),
    status: ["active", "inactive"].sample
  )
end

# Seed data for Products
10.times do
    Product.create!(
      name: Faker::Commerce.product_name,
      shop_id: rand(1..10),  # Use random shop_id
      description: Faker::Lorem.paragraph,
      price: Faker::Commerce.price(range: 10..100),
      image: "product#{rand(1..5)}.jpg",
      availability: ["available", "out_of_stock"].sample,
      category: Faker::Commerce.department(max: 100, fixed_amount: true)
    )
  end

# Seed data for CartItems
10.times do
  CartItem.create!(
    cart_id: rand(1..10),  # Use random cart_id
    product_id: rand(1..10),
    quantity: rand(1..500)
  )
end

# Seed data for Orders
10.times do
    Order.create!(
      customer_id: rand(1..10),  # Use random customer_id
      quantity: rand(1..10),
      total_price: rand(10..100),
      status: ["processing", "completed", "cancelled"].sample,
      payment_method: ["credit_card", "paypal", "cash_on_delivery"].sample,
      shipping_adress: Faker::Address.full_address,  # Correct attribute name
      date: Faker::Date.between(from: 360.days.ago, to: Date.today)
    )
  end

puts 'done seeding....'
