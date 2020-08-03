# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(1..100).each do |number|
  make = Faker::Vehicle.make
  Veiculo.find_or_create_by(marca: make, veiculo: Faker::Vehicle.model(make_of_model: make), ano: Faker::Vehicle.year, descricao: Faker::Vehicle.standard_specs[3], vendido: Faker::Boolean.boolean)
end