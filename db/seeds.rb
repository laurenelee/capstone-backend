# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
include Faker

volunteer_type_array = ["Seniors", "Homelessness", "Arts and Culture", "Animals", "Advocacy and Human Rights", "Children and Youth", "Computers and Technology", "Community", "Education and Literacy", "Health and Medicine", "Disaster Relief", "LGBT", "Justice and Legal", "Environment", "Faith-Based", "Crisis Support", "Immigrants and Refugees", "Sports and Recreation"]

photo_random = [ 'https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1469398718052-b9d13df0d7c9?auto=format&fit=crop&w=1351&q=80', 'https://images.unsplash.com/photo-1469398173142-20d7f23dfb26?auto=format&fit=crop&w=1351&q=80', 'https://images.unsplash.com/photo-1511898634545-c01af8a54dd5?auto=format&fit=crop&w=1420&q=80', 'https://images.unsplash.com/photo-1507698742121-03afd7bf95c5?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1494257610566-28280a243b22?auto=format&fit=crop&w=668&q=80', 'https://images.unsplash.com/photo-1437914983566-976d85602771?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1510940385761-716fc56197e8?auto=format&fit=crop&w=1446&q=80', 'https://images.unsplash.com/photo-1493528237448-144452699e16?auto=format&fit=crop&w=1465&q=80', 'https://images.unsplash.com/photo-1495983239379-7f250e210f10?auto=format&fit=crop&w=1491&q=80', 'https://images.unsplash.com/photo-1474552028796-8d1a00327610?auto=format&fit=crop&w=1005&q=80', 'https://images.unsplash.com/photo-1474649107449-ea4f014b7e9f?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1504805572947-34fad45aed93?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1485115905815-74a5c9fda2f5?auto=format&fit=crop&w=722&q=80', 'https://images.unsplash.com/photo-1497486751825-1233686d5d80?auto=format&fit=crop&w=1301&q=80', 'https://images.unsplash.com/photo-1477884213360-7e9d7dcc1e48?auto=format&fit=crop&w=1350&q=80', 'https://images.unsplash.com/photo-1496753902591-ced4b55638fd?auto=format&fit=crop&w=2251&q=80', 'https://images.unsplash.com/photo-1461532257246-777de18cd58b?auto=format&fit=crop&w=1355&q=80', 'https://images.unsplash.com/photo-1465252505946-72efd5e572f7?auto=format&fit=crop&w=1355&q=80', 'https://images.unsplash.com/photo-1514415008039-efa173293080?auto=format&fit=crop&w=1504&q=80', 'https://images.unsplash.com/photo-1506989878914-1d87be368e86?auto=format&fit=crop&w=1267&q=80', 'https://images.unsplash.com/photo-1513240810486-5dd6a777484e?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1513240713990-4c0438f4f407?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1513042966058-0ac1891fdc2d?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1512615350195-8afd94669877?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1511949903813-5c8473edd342?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1511949817959-d24d516a8f8e?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1509616998492-816f601f12d7?auto=format&fit=crop&w=1422&q=80', 'https://images.unsplash.com/photo-1508834564032-1fcbfcbc2834?auto=format&fit=crop&w=1452&q=80', 'https://images.unsplash.com/photo-1499334844006-d49df7788949?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1493259606967-571afaef3d81?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1466784828399-9a9921e8bdfd?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1512758017271-d7b84c2113f1?auto=format&fit=crop&w=1500&q=80', 'https://images.unsplash.com/photo-1494707924465-e1426acb48cb?auto=format&fit=crop&w=1500&q=80']

url = ['https://www.volunteermatch.org/search/org54991.jsp', 'https://www.volunteermatch.org/search/opp1893810.jsp', 'https://www.volunteermatch.org/search/opp787830.jsp', 'https://www.volunteermatch.org/search/opp2856726.jsp']
# photo = '../app/assets/'

zip_data = ['98101', '98102', '98103', '98104', '98105', '98106', '98107', '98108', '98109', '98111', '98112', '98113', '98114', '98115']

description_data = ["Safe Place Shelter is  dedicated to ending abuse and providing compassionate treatment for victims of domestic violence for over 15 years. We're available 24 hours a day with an emergency hotline, and we provide confidential shelter, counseling, resources, justice system advocacy, and youth programs", "Volunteers assist with youth programming as needed, and work outdoors with youth of varying socioeconomic backgrounds. Must have verbal, nonverbal, and listening skills, enjoy working with people, and have the ability to handle stressful situations, follow directions, and provide customer service.", "Do you have a talent for putting on a historical demonstration or just enjoy sharing with others something engaging about Northern Ohio history? This is an opportunity to share informal interpretation as a historical artisan that will be both stimulating and educational.", "Volunteers assist the National Park Service in presenting Student Explorer programming to children.", "Volunteers assist food service with food preparation and clean up before and after meal times.", "Kids can work alongside their parents to help organizations like Shoreline-based Food Lifeline and Tacoma-based Food Connection to package large food donations for local food banks and shelters.", "You can help plant, weed, and harvest in community gardens such as the Magnuson Children’s Garden in northeast Seattle, or help grow food for low-income families and seniors at places like the Giving Garden at Marra Farm.", "The Graphic Design Volunteer will provide assistance to the marketing and communications team with creating and updating design elements across the organization.", "You’ll spend a lot of time cleaning up after the animals, feeding the animals, and helping potential adopters through the adoption process. After finishing these tasks, you will get to play with the animals.", "Before starting your volunteer work, most zoos/sanctuaries require you undergo a training program (the length of time will vary). During the training program, you’ll learn about conservation and ecology issues, biomes, and the species of the plants and animals at the zoo/sanctuary.", "Consider volunteering at your local soup kitchen. As a soup kitchen volunteer, you might cook food, help distribute food to the homeless, and clean up the food and plates/utensils.", "Love being around books? You should consider being a library volunteer. As a library volunteer, you may organize books, help repair books, help visitors locate books, help visitors use the computer, or help younger students with their homework.", "As a cleanup volunteer, you’ll be helping pick up garbage on the beach or in the forest or park. This is an extremely important for reducing pollution and helping little creatures (many ingest or get tangled in our trash).", "As a museum volunteer, you’ll educate guests about museum exhibits, conduct workshops and demonstrations for visitors, and/or provide administrative support (help with ticketing and directing visitors)."]

name_data = [ Faker::VentureBros.organization, Faker::Company.name, Faker::Zelda.location, Faker::App.name, Faker::Name.name,
Faker::Educator.campus, Faker::Job.title, Faker::University.name]

1000.times do
  AgencyDetail.create(
  name: name_data.sample,
  age_minimum: Faker::Number.between(4, 19),
  volunteer_type: volunteer_type_array.sample,
  zip: zip_data.sample,
  description: description_data.sample,
  photo_url: photo_random.sample,
  url: url.sample
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
