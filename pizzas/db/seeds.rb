# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create some restaurants
restaurant1 = Restaurant.create(name: "Pizza Hut")
restaurant2 = Restaurant.create(name: "Domino's Pizza")
restaurant3 = Restaurant.create(name: "Papa John's Pizza")
restaurant4 = Restaurant.create(name: "Little Caesars")
restaurant5 = Restaurant.create(name: "California Pizza Kitchen")
restaurant6 = Restaurant.create(name: "Round Table Pizza")

# Create some pizzas
pizza1 = Pizza.create(name: "Margherita")
pizza2 = Pizza.create(name: "Pepperoni")
pizza3 = Pizza.create(name: "Vegetarian")
pizza4 = Pizza.create(name: "Hawaiian")
pizza5 = Pizza.create(name: "Meat Lovers")
pizza6 = Pizza.create(name: "BBQ Chicken")

# Associate pizzas with restaurants through restaurant_pizzas
RestaurantPizza.create(restaurant: restaurant1, pizza: pizza1, price: 10)
RestaurantPizza.create(restaurant: restaurant1, pizza: pizza2, price: 12)
RestaurantPizza.create(restaurant: restaurant2, pizza: pizza2, price: 11)
RestaurantPizza.create(restaurant: restaurant2, pizza: pizza3, price: 15)
RestaurantPizza.create(restaurant: restaurant3, pizza: pizza1, price: 8)
RestaurantPizza.create(restaurant: restaurant3, pizza: pizza3, price: 14)
RestaurantPizza.create(restaurant: restaurant4, pizza: pizza3, price: 8)
RestaurantPizza.create(restaurant: restaurant4, pizza: pizza4, price: 11)
RestaurantPizza.create(restaurant: restaurant5, pizza: pizza2, price: 13)
RestaurantPizza.create(restaurant: restaurant5, pizza: pizza6, price: 16)
RestaurantPizza.create(restaurant: restaurant6, pizza: pizza1, price: 9)
RestaurantPizza.create(restaurant: restaurant6, pizza: pizza5, price: 14)
