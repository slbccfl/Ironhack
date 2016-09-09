# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
donduck = User.create!(name: 'Donald Duck', email: 'donduck@magickingdom.org')
pluto = User.create!(name: 'Pluto', email: 'pluto@magickingdom.org')
mickeymouse = User.create!(name: 'Mickey Mouse', email: 'mickeymouse@magickingdom.org')
superman = User.create!(name: 'Clark Kent', email: 'ckent@dailyplanet.com')

cape = superman.products.create!(title: "Red Cape", description: "Like new with a really big S", deadline: Time.now+(5*24*60*60))

bid = cape.bids.create!(amount: 100.00)