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
  { name: 'ワンピース' },
  { name: 'パンツ' },
  { name: 'アウター' },
  { name: 'バッグ' },
  { name: 'シューズ' }
  ])
Color.create([
  { name: 'ブラック' },
  { name: 'ホワイト' },
  { name: 'グレー' },
  { name: 'ベージュ' },
  { name: 'ブラウン' },
  { name: 'レッド' },
  { name: 'ピンク' },
  { name: 'ブルー' },
  { name: 'イエロー' },
  { name: 'グリーン' },
  { name: 'パープル' }
])
Season.create([
  { name: '春' },
  { name: '夏' },
  { name: '秋' },
  { name: '冬' }
])