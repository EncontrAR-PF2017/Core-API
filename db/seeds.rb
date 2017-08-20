# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "lucas@encontrar.com", name: "Lucas", lastname: "DLT", password: "12345678")
User.create(email: "mauro@encontrar.com", name: "Mauro", lastname: "Marti", password: "12345678")
User.create(email: "andres@encontrar.com", name: "Andres", lastname: "Zaraza", password: "12345678")
User.create(email: "naiara@encontrar.com", name: "Naiu", lastname: "Shawalala", password: "12345678")
User.create(email: "juan@encontrar.com", name: "Juani", lastname: "Casares", password: "12345678")

MissingPerson.create(name: "Luciana", lastname: "Camboya", dni: "39876436", age: "16")
MissingPerson.create(name: "Carlos", lastname: "Altamira", dni: "34347436", age: "35")
MissingPerson.create(name: "Marina", lastname: "Ibramovich", dni: "35876956", age: "26")