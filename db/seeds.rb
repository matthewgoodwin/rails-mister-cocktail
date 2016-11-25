# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'open-uri'

Ingredient.destroy_all
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "brandy")
Ingredient.create(name: "cherry")
Ingredient.create(name: "gin")
Ingredient.create(name: "rum")
Ingredient.create(name: "coke")
Ingredient.create(name: "vodka")
Ingredient.create(name: "soda")
Ingredient.create(name: "lime")
Ingredient.create(name: "whiskey")

# url = http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list
