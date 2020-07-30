# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
  { name: 'トップス' },
  { name: 'スカート' },
  { name: 'パンツ' },
  { name: 'ワンピース' },
  { name: 'アウター' },
  { name: 'バッグ' },
  { name: 'シューズ' }
])

Color.create([
  { name: 'black' },
  { name: 'white' },
  { name: 'gray' },
  { name: 'beige' },
  { name: 'brown' },
  { name: 'red' },
  { name: 'pink' },
  { name: 'orange' },
  { name: 'yellow' },
  { name: 'green' },
  { name: 'blue' },
  { name: 'purple' }
])

Season.create([
  { name: 'spring' },
  { name: 'summer' },
  { name: 'autom' },
  { name: 'winter' }
])