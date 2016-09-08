# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ironhack = Project.create!(name: 'Ironhack', description: 'Ironhack is a ...')
Project.create!(name: 'Time tracking app')
Project.create!(name: 'Recipes', description: 'Track my favorite recipes')
Project.create!(name: 'Gunsmoke', description: 'The smoking gun')
Project.create!(name: 'Inception', description: 'Are we still inside?')
st = Project.create!(name: 'Steam train', description: 'Old technology persists in spite of new')
Project.create!(name: 'Puppies & Ice Cream', description: 'These are a few of my favorite things')
Project.create!(name: 'Hyperloop', description: 'New technology arises in spite of old')
Project.create!(name: 'Skyscaper', description: 'You missed a spot there')
Project.create!(name: 'Earth II', description: 'The voyage begins')

ironhack.time_entries.create!(hours: 1, minutes: 31)
ironhack.time_entries.create!(hours: 2, minutes: 32)
ironhack.time_entries.create!(hours: 3, minutes: 33)
ironhack.time_entries.create!(hours: 4, minutes: 34)
ironhack.time_entries.create!(hours: 5, minutes: 35)
ironhack.time_entries.create!(hours: 6, minutes: 36)
ironhack.time_entries.create!(hours: 7, minutes: 37)
ironhack.time_entries.create!(hours: 8, minutes: 38)
ironhack.time_entries.create!(hours: 9, minutes: 39, date: Time.now.beginning_of_year)
ironhack.time_entries.create!(hours: 0, minutes: 30, date: Time.now)

st.time_entries.create!(hours: 0, minutes: 30)