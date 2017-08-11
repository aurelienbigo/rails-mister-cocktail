Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

i1 = Ingredient.create!(name: "lemon")
i2 = Ingredient.create!(name: "ice")
i4 = Ingredient.create!(name: "mint leaves")
i5 = Ingredient.create!(name: "rhum")
i6 = Ingredient.create!(name: "coco")
i7 = Ingredient.create!(name: "whisky")
i8 = Ingredient.create!(name: "limonade")
i9 = Ingredient.create!(name: "orange")
i10 = Ingredient.create!(name: "coke")
i11 = Ingredient.create!(name: "sugar")


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
