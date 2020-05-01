# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ingredient1 = Ingredient.create(name: 'lemon')
ingredient2 = Ingredient.create(name: 'ice')
ingredient3 = Ingredient.create(name: 'mint leaves')

cocktail1 = Cocktail.create(name: 'cuba-libre')
cocktail2 = Cocktail.create(name: 'sex on the beach')
cocktail3 = Cocktail.create(name: 'pina colada')

Dose.create(ingredient: ingredient1, cocktail: cocktail1)
dose2 = Dose.new
dose3 = Dose.new
dose4 = Dose.new
dose5 = Dose.new
dose6 = Dose.new

dose2.ingredient = ingredient1
dose2.cocktail = cocktail2
dose3.ingredient = ingredient2
dose3.cocktail = cocktail1
dose4.ingredient = ingredient2
dose4.cocktail = cocktail3
dose5.ingredient = ingredient3
dose5.cocktail = cocktail1
dose6.ingredient = ingredient3
dose6.cocktail = cocktail2

dose2.save
dose3.save
dose4.save
dose5.save
dose6.save
