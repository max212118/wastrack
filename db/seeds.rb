# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Seeding..."

RoadContainer.destroy_all
Container.destroy_all
Road.destroy_all
User.destroy_all
Truck.destroy_all
CityHall.destroy_all

city_hall_megeve = CityHall.create!(name: "Megeve")

user1 = User.create!(first_name: 'Maxence', last_name: 'Tarnaud', email:'maxence.trnd@gmail.com', password: '123456', admin: true, phone_number: '0664929923')
user2 = User.create!(first_name: 'Krystof', last_name: 'Novak', email:'krystof.novak@gmail.com', password: '123456', admin: true, phone_number: '0664929924')
user3 = User.create!(first_name: 'Eli', last_name: 'Renucci', email:'eli.renucci@gmail.com', password: '123456',employee_id: 'AZERT',employee_category: 'city_employee', admin: false, city_hall_id: city_hall_megeve.id, phone_number: '0664929925')
user4 = User.create!(first_name: 'Kosta', last_name: 'Cucuz', email:'kosta.cucuz@gmail.com', password: '123456',employee_id: 'YUIOP', employee_category: 'city_employee', admin: false, city_hall_id: city_hall_megeve.id, phone_number: '0664929926')
user5 = User.create!(first_name: 'Phillipine', last_name: 'Doligez', email:'phillipine.doligez@gmail.com', password: '123456',employee_id: 'QSDFG',employee_category: 'collector', admin: false, city_hall_id: city_hall_megeve.id, phone_number: '0664929927')
user6 = User.create!(first_name: 'Francois', last_name: 'Robino', email:'francois.robino@gmail.com', password: '123456',employee_id: 'GHJKL',employee_category: 'collector', admin: false, city_hall_id: city_hall_megeve.id, phone_number: '0664929928')
user7 = User.create!(first_name: 'Romain', last_name: 'Tarnaud', email:'romain.tarnaud@gmail.com', password: '123456',employee_id: 'WXCVB',employee_category: 'collector', admin: false, city_hall_id: city_hall_megeve.id, phone_number: '0664929929')
user8 = User.create!(first_name: 'Louis', last_name: 'Quemard', email:'louis.quemard@gmail.com', password: '123456',employee_id: 'JKLMD',employee_category: 'collector', admin: false, city_hall_id: city_hall_megeve.id, phone_number: '0664929430')
user9 = User.create!(first_name: 'Boris', last_name: 'Paillard', email:'boris@lewagon.org', password: '123456',employee_id: 'JKLMD',employee_category: 'collector', admin: true, city_hall_id: city_hall_megeve.id, phone_number: '0664929430')

truck1 = Truck.create!(kilometers: 25000, consumption: 35, city_hall_id: city_hall_megeve.id, plate_number: 'AZER1234')
truck2 = Truck.create!(kilometers: 50000, consumption: 32, city_hall_id: city_hall_megeve.id, plate_number: 'YUIO5678')
truck3 = Truck.create!(kilometers: 12000, consumption: 28, city_hall_id: city_hall_megeve.id, plate_number: 'HJKK694')
truck4 = Truck.create!(kilometers: 5000, consumption: 25, city_hall_id: city_hall_megeve.id, plate_number: 'YHBG5679')
truck5 = Truck.create!(kilometers: 165, consumption: 1, city_hall_id: city_hall_megeve.id, plate_number: 'FD803XY')

road1 = Road.create!(user_id: user3.id, truck_id: truck1.id, date: Date.today)

container1 = Container.create!(temperature: 18, filling_level: 20, location: '747 Rte de Prariand, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container2 = Container.create!(temperature: 15, filling_level: 40, location: '2635 Rte du Jaillet, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container3 = Container.create!(temperature: 13, filling_level: 60, location: '1201 Rte du Jaillet, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container4 = Container.create!(temperature: 10, filling_level: 70, location: "77 Rte d'Ormaret, 74120 Demi-Quartier", broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container5 = Container.create!(temperature: 12, filling_level: 70, location: "1476 Route De Vers Le Nant, 74120 Demi-Quartier, France", broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container6 = Container.create!(temperature: 13, filling_level: 40, location: '116 Rte de la Côté 2000, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container7 = Container.create!(temperature: 17, filling_level: 30, location: '2017 Rte du Leutaz, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container8 = Container.create!(temperature: 9, filling_level: 80, location: '42 Rte des Nards, 74120 Praz-sur-Arly', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container9 = Container.create!(temperature: 18, filling_level: 90, location: '963 Rte du Feug, 74920 Combloux', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container10 = Container.create!(temperature: 22, filling_level: 40, location: '515 Rte du Bouchet, 74920 Combloux', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container11 = Container.create!(temperature: 21, filling_level: 80, location: '1760 Rte du Vernay, 74920 Combloux', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container12 = Container.create!(temperature: 16, filling_level: 100, location: '444 Rte de la Grange, 74920 Combloux', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container13 = Container.create!(temperature: 15, filling_level: 10, location: 'Chem. du Giroux, 74170 Saint-Gervais-les-Bains', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container14 = Container.create!(temperature: 13, filling_level: 60, location: '163 Chem. de Bornand, 74120 Demi-Quartier', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container15 = Container.create!(temperature: 16, filling_level: 80, location: '3351 Rte Edmond de Rothschild, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call
container16 = Container.create!(temperature: 12, filling_level: 100, location: '42 Chemin Des Raverots, 74120 Megève, France', broken: false, city_hall_id: city_hall_megeve.id)

SeedContainerFillingLevels.new(Container.last).call

road_container1 = RoadContainer.create!(container_id: container3.id, collected: false, road: road1)
road_container2 = RoadContainer.create!(container_id: container4.id, collected: false, road: road1)
road_container3 = RoadContainer.create!(container_id: container5.id, collected: false, road: road1)
road_container4 = RoadContainer.create!(container_id: container8.id, collected: false, road: road1)
road_container5 = RoadContainer.create!(container_id: container9.id, collected: false, road: road1)
road_container6 = RoadContainer.create!(container_id: container11.id, collected: false, road: road1)
road_container7 = RoadContainer.create!(container_id: container12.id, collected: false, road: road1)
road_container8 = RoadContainer.create!(container_id: container14.id, collected: false, road: road1)
road_container9 = RoadContainer.create!(container_id: container15.id, collected: false, road: road1)
road_container10 = RoadContainer.create!(container_id: container16.id, collected: false, road: road1)

file = URI.open('https://avatars.githubusercontent.com/u/96442481?v=4')
user1.photo.attach(io: file, filename: 'maxence.png', content_type: 'image/jpg')

file = URI.open('https://avatars.githubusercontent.com/u/67561419?v=4')
user2.photo.attach(io: file, filename: 'arnaud.png', content_type: 'image/jpg')

file = URI.open('https://avatars.githubusercontent.com/u/97159673?v=4')
user3.photo.attach(io: file, filename: 'eli.png', content_type: 'image/jpg')

file = URI.open('https://avatars.githubusercontent.com/u/95491777?v=4')
user4.photo.attach(io: file, filename: 'amaury.png', content_type: 'image/jpg')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
user5.photo.attach(io: file, filename: 'container.png', content_type: 'image/png')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
user6.photo.attach(io: file, filename: 'container.png', content_type: 'image/png')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
user7.photo.attach(io: file, filename: 'container.png', content_type: 'image/png')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
user8.photo.attach(io: file, filename: 'container.png', content_type: 'image/png')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
user9.photo.attach(io: file, filename: 'container.png', content_type: 'image/png')

file = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2018/08/43ab56da-2891-4915-8553-1e3ce9634714/860_img_5002_0.jpg')
container1.photo.attach(io: file, filename: 'container1.png', content_type: 'image/png')

file = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2018/08/43ab56da-2891-4915-8553-1e3ce9634714/860_img_5002_0.jpg')
container2.photo.attach(io: file, filename: 'container2.png', content_type: 'image/png')

file = URI.open('https://img.archiexpo.fr/images_ae/photo-g/149561-9415923.jpg')
container3.photo.attach(io: file, filename: 'container3.png', content_type: 'image/png')

file = URI.open('https://www.hellopro.fr/images/produit-2/8/0/1/conteneur-semi-enterre-pehd-monobloc-6614108.jpg')
container4.photo.attach(io: file, filename: 'container4.png', content_type: 'image/png')

file = URI.open('https://cdn-s-www.ledauphine.com/images/35FFE94F-1882-4852-8475-B30948115C87/NW_raw/des-containers-semi-enterres-de-ce-type-seront-bientot-installes-a-pussiez-et-chemin-du-bon-photo-le-dl-raymond-brassoud-1595427866.jpg')
container5.photo.attach(io: file, filename: 'container5.png', content_type: 'image/png')

file = URI.open('https://www.bugeysud-trimax.fr/wp-content/uploads/2017/09/CSE-Burbanche-e1504536972712.jpg')
container6.photo.attach(io: file, filename: 'container6.png', content_type: 'image/png')

file = URI.open('https://www.techni-contact.com/ressources/images/produits/zoom/conteneur-rond-semi-enterre-a-50-cm-16650542-3.jpg')
container7.photo.attach(io: file, filename: 'container7.png', content_type: 'image/png')

file = URI.open('https://5nlhp384fz-flywheel.netdna-ssl.com/wp-content/uploads/conteneurs_enterres.png')
container8.photo.attach(io: file, filename: 'container8.png', content_type: 'image/png')

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
container9.photo.attach(io: file, filename: 'container9.png', content_type: 'image/png')

file = URI.open('https://www.mesopinions.com/public/img/petition/petition-img-16623-fr.jpeg')
container10.photo.attach(io: file, filename: 'container10.png', content_type: 'image/png')

file = URI.open('https://cdn.radiofrance.fr/s3/cruiser-production/2018/08/43ab56da-2891-4915-8553-1e3ce9634714/860_img_5002_0.jpg')
container11.photo.attach(io: file, filename: 'container11.png', content_type: 'image/png')

file = URI.open('https://img.archiexpo.fr/images_ae/photo-g/149561-9415923.jpg')
container12.photo.attach(io: file, filename: 'container12.png', content_type: 'image/png')

file = URI.open('https://www.hellopro.fr/images/produit-2/8/0/1/conteneur-semi-enterre-pehd-monobloc-6614108.jpg')
container13.photo.attach(io: file, filename: 'container13.png', content_type: 'image/png')

file = URI.open('https://cdn-s-www.ledauphine.com/images/35FFE94F-1882-4852-8475-B30948115C87/NW_raw/des-containers-semi-enterres-de-ce-type-seront-bientot-installes-a-pussiez-et-chemin-du-bon-photo-le-dl-raymond-brassoud-1595427866.jpg')
container14.photo.attach(io: file, filename: 'container14.png', content_type: 'image/png')

file = URI.open('https://www.bugeysud-trimax.fr/wp-content/uploads/2017/09/CSE-Burbanche-e1504536972712.jpg')
container15.photo.attach(io: file, filename: 'container15.png', content_type: 'image/png')

file = URI.open('https://www.techni-contact.com/ressources/images/produits/zoom/conteneur-rond-semi-enterre-a-50-cm-16650542-3.jpg')
container16.photo.attach(io: file, filename: 'container16.png', content_type: 'image/png')

puts "Seeding done."
