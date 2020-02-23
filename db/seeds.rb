# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Outgoing.create(item: '水', price: 150, place: 'コンビニ', date: '2020-02-21')
Outgoing.create(item: 'ジュース', price: 200, place: '自販機', date: '2020-02-12')
Outgoing.create(item: '弁当', price: 500, place: 'スーパー', date: '2020-02-15')
Outgoing.create(item: 'まくら', price: 3000, place: 'ニトリ', date: '2020-02-05')
Outgoing.create(item: 'タンス', price: 20000, place: '通販', date: '2020-02-20')
Outgoing.create(item: '水', price: 120, place: 'スーパー', date: '2020-02-16')