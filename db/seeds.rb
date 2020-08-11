# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
  { name: 'Tops' },
  { name: 'Skirt' },
  { name: 'Pants' },
  { name: 'Onepiece' },
  { name: 'Outer' },
  { name: 'Bag' },
  { name: 'Shoes' }
])

Color.create([
  { name: 'Black' },
  { name: 'White' },
  { name: 'Gray' },
  { name: 'Beige' },
  { name: 'Brown' },
  { name: 'Red' },
  { name: 'Pink' },
  { name: 'Orange' },
  { name: 'Yellow' },
  { name: 'Green' },
  { name: 'Blue' },
  { name: 'Purple' },
  { name: 'Other'}
])

Season.create([
  { name: 'Spring' },
  { name: 'Summer' },
  { name: 'Autumn' },
  { name: 'Winter' },
  { name: 'All'}
])