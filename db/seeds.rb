Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

i1 = Ingredient.create(name: "lemon")
i2 = Ingredient.create(name: "ice")
i3 = Ingredient.create(name: "mint leaves")

c1 = Cocktail.create(name: "Cuba libre")
c2 = Cocktail.create(name: "Gin to")
c3 = Cocktail.create(name: "Zazou")

Dose.create(ingredient_id: i1.id, description: "5cl", cocktail_id: c1.id)
Dose.create(ingredient_id: i2.id, description: "15cl", cocktail_id: c3.id)
Dose.create(ingredient_id: i3.id, description: "10cl", cocktail_id: c2.id)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
