# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: 'drewdawg44@hotmail.com',
  password: 'helloworld',
  username: 'Neidley'
)

5.times do
  User.create!(
    email: Faker::Internet.email,
    username: Faker::Zelda.character,
    password: Faker::Internet.password
  )
end
users = User.all

10.times do
  Item.create!(
    user: users.sample,
    name: Faker::Beer.name
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
