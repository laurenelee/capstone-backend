# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
include faker

20.times do
  AgencyDetail.create(

  )
end
######### for agency name:
# Faker::App.name
# or company name ?

######### for age range:
# .between(from = 1.00, to = 5000.00) ⇒ Object

######### for volunteer type (not faker but a potential list like this): 
# seniors, homeless, arts and culture, animals, advocacy and human rights, children and youth, computers and technology, community, education and literacy, health and medicine, disaster relief, LGBT, justice and legal, environment, faith-based, crisis support, immigrants and refugees, sports and recreation

######### for address location
# Faker::Address.latitude
# Faker::Address.longitude
