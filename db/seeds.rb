# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# require 'faker'
# include faker
#
# 20.times do
#   AgencyDetail.create(
#   name: Faker::Name.name,
#   # etc
#   )
# end
######### for agency name:
# Faker::App.name
# or company name ?

######### for agency description:
# Faker::Lorem.paragraphs

######### for age minimum: some agencies might not have this... ?
# .between(from = 4, to = 18) ⇒ Object

######### for volunteer type (not faker but a potential list like this):  (like to have an agency be able to be multiple things) list is an array
# randomly pick 1-5 and then grab randomly that many from the array  (1/4/18 do this later- it could be a join table  )
# seniors, homelessness, arts and culture, animals, advocacy and human rights, children and youth, computers and technology, community, education and literacy, health and medicine, disaster relief, LGBT, justice and legal, environment, faith-based, crisis support, immigrants and refugees, sports and recreation

######### for address location
# Faker::Address.latitude
# Faker::Address.longitude
