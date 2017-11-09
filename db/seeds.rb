# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "gin")
# Ingredient.create(name: "sprite")
# Ingredient.create(name: "rum")
# Ingredient.create(name: "coke")



10.times do
  cocktails = Cocktail.new({ name: Faker::Superhero.name })
  cocktails.save!
end

# 10.times do
#   ingredients = Ingredient.new({ name: Faker::Food.ingredient })
#   ingredients.save!
# end


