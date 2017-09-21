# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "=========> Creating vehicle"
vehicle = Vehicle.create(
  license_plate: "ABC101",
  color: "Blanco", 
  year: 2011
)

p "=========> Creating passenger"
passenger = Passenger.create(
  name: "Pepito Perez",
  email: "sample@sample.com",
  password: "password",
  password_confirmation: "password"
)

p "=========> Creating routes"
5.times do 
  route = Route.create(
    date: FFaker::Time.date,
    vehicle_id: vehicle.id
  )
  passenger.routes << route
end



