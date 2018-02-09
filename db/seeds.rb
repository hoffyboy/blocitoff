# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if !User.any?
  Tommy = User.create!(
    name: 'Tommy Chang',
    email:    'tommy@example.com',
    password: '123456',
    confirmed_at: Time.now
  )

  Albert = User.create!(
    name: 'Albert Smith',
    email:    'albert@example.com',
    password: '123456',
    confirmed_at: Time.now
  )

  Sammy = User.create!(
    name: 'Sammy Blong',
    email:    'sammy@example.com',
    password: '123456',
    confirmed_at: Time.now
  )

  Beth = User.create!(
    name: 'Beth Rainer',
    email:    'beth@example.com',
    password: '123456',
    confirmed_at: Time.now
  )
end

40.times do
  item = Item.create!(
    name: Faker::Lorem.words.join(" "),
    user: User.all.sample
  )

  puts "Seed finished"
  puts "#{User.count} users created"
  puts "#{Item.count} items created"
end
