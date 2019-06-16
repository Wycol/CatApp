# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Admin", email: "user@example.com", password: "changeme", admin: true, active: true, tipo: "Admin")
10.times do
    User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "messi", age: Faker::Number.between(20,60), perfil: Faker::Number.between(0,7), dni: Faker::DNI.dni, phone: Faker::PhoneNumber.phone_number )
    Resource.create(name: Faker::Artist.name , localization: Faker::Address.state, category: Faker::Number.between(0,6))
    MissingPerson.create(name: Faker::Name.name, lastname: Faker::Name.last_name, age: Faker::Number.between(20,60), gender: Faker::Number.between(0,1), height: Faker::Number.between(150,180) , weight: Faker::Number.between(50,100)  , eye: Faker::Number.between(0,5), race: Faker::Number.between(0,5), hair: Faker::Number.between(0,2), hair_color: Faker::Number.between(0,4), complexion: Faker::Number.between(0,2) , contact_name: Faker::Name.name, relationship: "Familia", phone: Faker::PhoneNumber.phone_number )
end
