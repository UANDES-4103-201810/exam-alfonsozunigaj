# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredients = Ingredient.create([{ name: 'Mozzarella' }, #1
                                 { name: 'Peperoni' },#2
                                 { name: 'Jam' },#3
                                 { name: 'Bacon' },#4
                                 { name: 'Pineapple' },#5
                                 { name: 'Chicken' },#6
                                 { name: 'Onion' },#7
                                 { name: 'BBQ' },#8
                                 { name: 'Tomato' },#9
                                 { name: 'Pepper' },#10
                                 { name: 'Olive' },#11
                                 { name: 'Mushroom' },#12
                                 { name: 'Garlic' },#13
                                 { name: 'Oregano' },#14
                                 { name: 'Beef' },#15
                                 { name: 'Sausage' } ])#16

crusts = Crust.create([{ thin: true, price: 590 }, { thin: false, price: 990 }])

recipes = Recipe.create([{ name: 'Peperoni', price: 10690, image: 'https://d3auwaok61spz6.cloudfront.net/content/OnlineOrderingImages/Menu/Items/Super_Pepperoni.jpg' },
                         { name: 'All Meats', price: 11490, image: 'https://d3auwaok61spz6.cloudfront.net/content/OnlineOrderingImages/Menu/Items/Todas_Las_Carnes_New.jpg' },
                         { name: 'Italian', price: 9090, image: 'https://d3auwaok61spz6.cloudfront.net/content/OnlineOrderingImages/Menu/Items/Napolitana_New2.jpg' },
                         { name: 'Hawaiian', price: 10690, image: 'https://d3auwaok61spz6.cloudfront.net/content/OnlineOrderingImages/Menu/Items/Hawaiana.jpg' }])

IngredientRecipe.create(recipe: recipes.first, ingredient: ingredients.first)
IngredientRecipe.create(recipe: recipes.first, ingredient: ingredients.second)

IngredientRecipe.create(recipe: recipes.second, ingredient: ingredients.first)
IngredientRecipe.create(recipe: recipes.second, ingredient: ingredients.second)
IngredientRecipe.create(recipe: recipes.second, ingredient: ingredients.third)
IngredientRecipe.create(recipe: recipes.second, ingredient: ingredients.fourth)

IngredientRecipe.create(recipe: recipes.third, ingredient: ingredients.first)
IngredientRecipe.create(recipe: recipes.third, ingredient: ingredients.third)
IngredientRecipe.create(recipe: recipes.third, ingredient: ingredients.second)

IngredientRecipe.create(recipe: recipes.fourth, ingredient: ingredients.first)
IngredientRecipe.create(recipe: recipes.fourth, ingredient: ingredients.fifth)
