# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Admin", email: "user@example.com", password: "changeme", admin: true, active: true, tipo: "Admin")
5.times do
    User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "messi", age: Faker::Number.between(20,60), perfil: Faker::Number.between(0,7), dni: Faker::DNI.dni, phone: Faker::PhoneNumber.phone_number )
end
