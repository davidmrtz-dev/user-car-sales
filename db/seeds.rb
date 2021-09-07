# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password',
  admin: true
)

3.times do |n|
  User.create(
    email: "user#{n + 1}@example.com",
    password: 'password',
    password_confirmation: 'password'
  )
end

5.times do
  DealerShip.create(
    name: "#{Faker::Name.name} Motors",
    location: Faker::Address.state,
  )
end

DealerShip.all.each do |dealer_ship|
  5.times do
    Car.create(
      model: Faker::Vehicle.model,
      brand: Faker::Vehicle.manufacture,
      year: Faker::Vehicle.year,
      used: [true, false].sample,
      dealer_ship: dealer_ship
    )
  end
end