# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
puts "Seeding..."

RoadContainer.destroy_all
Container.destroy_all
Road.destroy_all
User.destroy_all
Truck.destroy_all
CityHall.destroy_all

city_hall_megeve = CityHall.create!()

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

road1 = Road.create!(user_id: user3.id, truck_id: truck1.id, date: Date.today)

container1 = Container.create!(temperature: 18, filling_level: 20, location: '3409 Rte nationale, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)
container2 = Container.create!(temperature: 15, filling_level: 40, location: '2635 Rte du Jaillet, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)
container3 = Container.create!(temperature: 13, filling_level: 60, location: '1201 Rte du Jaillet, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)
container4 = Container.create!(temperature: 10, filling_level: 70, location: "77 Rte d'Ormaret, 74120 Demi-Quartier", broken: false, city_hall_id: city_hall_megeve.id)
container5 = Container.create!(temperature: 12, filling_level: 70, location: "997 Chem. de l'Encraty, 74120 Demi-Quartier", broken: false, city_hall_id: city_hall_megeve.id)
container6 = Container.create!(temperature: 13, filling_level: 40, location: '116 Rte de la Côté 2000, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)
container7 = Container.create!(temperature: 17, filling_level: 30, location: '2017 Rte du Leutaz, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)
container8 = Container.create!(temperature: 9, filling_level: 80, location: '42 Rte des Nards, 74120 Praz-sur-Arly', broken: false, city_hall_id: city_hall_megeve.id)
container9 = Container.create!(temperature: 18, filling_level: 90, location: '963 Rte du Feug, 74920 Combloux', broken: false, city_hall_id: city_hall_megeve.id)
container10 = Container.create!(temperature: 22, filling_level: 40, location: '515 Rte du Bouchet, 74920 Combloux', broken: false, city_hall_id: city_hall_megeve.id)
container11 = Container.create!(temperature: 21, filling_level: 80, location: '1760 Rte du Vernay, 74920 Combloux', broken: false, city_hall_id: city_hall_megeve.id)
container12 = Container.create!(temperature: 16, filling_level: 100, location: '444 Rte de la Grange, 74920 Combloux', broken: false, city_hall_id: city_hall_megeve.id)
container13 = Container.create!(temperature: 15, filling_level: 10, location: 'Chem. du Giroux, 74170 Saint-Gervais-les-Bains', broken: false, city_hall_id: city_hall_megeve.id)
container14 = Container.create!(temperature: 13, filling_level: 60, location: '163 Chem. de Bornand, 74120 Demi-Quartier', broken: false, city_hall_id: city_hall_megeve.id)
container15 = Container.create!(temperature: 16, filling_level: 80, location: '3351 Rte Edmond de Rothschild, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)
container16 = Container.create!(temperature: 12, filling_level: 100, location: '42 Chem. des Raverots, 74120 Megève', broken: false, city_hall_id: city_hall_megeve.id)

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

puts "Seeding done."
