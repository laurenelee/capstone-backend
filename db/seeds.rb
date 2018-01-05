# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
include Faker

volunteer_type_array = ["seniors", "homelessness", "arts and culture", "animals", "advocacy and human rights", "children and youth", "computers and technology", "community", "education and literacy", "health and medicine", "disaster relief", "LGBT", "justice and legal", "environment", "faith-based", "crisis support", "immigrants and refugees", "sports and recreation"]

photo_random = [ 'https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1469398718052-b9d13df0d7c9?auto=format&fit=crop&w=1351&q=80', 'https://images.unsplash.com/photo-1469398173142-20d7f23dfb26?auto=format&fit=crop&w=1351&q=80', 'https://images.unsplash.com/photo-1511898634545-c01af8a54dd5?auto=format&fit=crop&w=1420&q=80', 'https://images.unsplash.com/photo-1507698742121-03afd7bf95c5?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1494257610566-28280a243b22?auto=format&fit=crop&w=668&q=80', 'https://images.unsplash.com/photo-1437914983566-976d85602771?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1510940385761-716fc56197e8?auto=format&fit=crop&w=1446&q=80', 'https://images.unsplash.com/photo-1493528237448-144452699e16?auto=format&fit=crop&w=1465&q=80', 'https://images.unsplash.com/photo-1495983239379-7f250e210f10?auto=format&fit=crop&w=1491&q=80']

# photo = '../app/assets/'

30.times do
  AgencyDetail.create(
  name: Faker::App.name,
  age_minimum: Faker::Number.between(4, 19),
  volunteer_type: volunteer_type_array.sample,
  lat_loc: Faker::Address.latitude,
  long_loc: Faker::Address.longitude,
  description: Faker::Lorem.paragraph,
  photo_url: photo_random.sample
  )
end
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
