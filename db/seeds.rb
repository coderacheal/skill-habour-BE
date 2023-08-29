# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



Course.create(name: 'Cooking', description: 'Discover the secrets of gourmet meals. From beginner basics to gourmet recipes.', image: 'cooking',  price: 20)
Course.create(name: 'Pottery', description: 'Dive into the world of clay and ceramics, where you\'ll learn to craft beautiful pottery pieces', image: 'pottery', price: 20)
Course.create(name: 'Music', description: 'Explore the magic of music, from playing instruments to mastering music theory', image: 'music', price: 20)
Course.create(name: 'Swimming', description: 'Make a splash! Dive into the world of aquatic fitness and water safety', image: 'swimming', price: 20)

User.create(username: 'Racheal', email: 'coderacheal@gmail.com', password: '12345')
