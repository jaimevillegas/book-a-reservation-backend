# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: 'osvaldo')
User.create(name: 'jaime')
User.create(name: 'nestor')
User.create(name: 'john')

Glamping.create(name: 'Glamping Colombia', glamping_type: 'Montaña, Río, Estrellas',
                description: 'En Glamping Colombia ofrecemos un servicio exclusivo y personalizado, brindando a nuestros visitantes una estadía en medio de la naturaleza, con un concepto único de camping con glamur, logrando generar experiencias únicas he inolvidables para aquellas personas que buscan escapar de la rutina de la ciudad y desean disfrutar de ambientes rodeados de montañas, bosques, lagunas, parques naturales, actividades de relajación y masajes, además de complementar la estadía en nuestros Domos con recorridos en Helicóptero, Velero, Parapente y Kayak.', image: 'https://www.glamping-colombia.com/wp-content/uploads/2019/05/home-4.jpg', location: 'Colombia', daily_rate: 100.00)
Glamping.create(name: 'Glamping Torres del Paine', glamping_type: 'Trees, Campsite, Luxury',
                description: 'Feel at one with nature as you gaze up at the stars from your bed, and wake up to beautiful sunrise views of Torres del Paine from your yurt or dome. Explore the park with daily excursions of your choice or a pre-planned itinerary, returning each night to delicious food and great company.', image: 'https://swoop-patagonia.imgix.net/CASC_4_CASC_RTD_DOMETDP.jpg', location: 'Chile', daily_rate: 565.00)
Glamping.create(name: 'Kilima Safari Camp', glamping_type: 'Safari, National Park, Massage',
                description: 'Situated in Amboseli National Park, Kilima offers spacious accommodation with views of the animal water pools and the Mount Kilimanjaro. Guided game drives and bush walks are offered.The tents and lodges at Kilima Safari Camp include a 4-poster bed with a mosquito net. All rooms have a seating area and a private bathroom. Some include a claw-foot tub. Guests can unwind with a selection of massage treatments available upon request or enjoy a refreshing swim and relax on the poolside lounger. Activities on offer include a nature walk or a free lecture about Maasaj culture. In the evening, Maasaj dancers perform.', image: 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/93681887.jpg?k=3ffdee501cbcbd0c3c98aa3afe15a4c019ce7d8c36ee47fc61d6f347e83b9358&o=&hp=1', location: 'Kenya', daily_rate: 330.00)

Reservation.create(reservation_date: '18-07-2023', due_date: '18-07-2023', service_fee: 50.0, user_id: 1, glamping_id: 1)
Glamping.create(name: 'Glamping León Dormido', glamping_type: 'Volcano, Snow, Relax',
                description: '¡Bienvenidos al Glamping León Dormido! Nuestro glamping está ubicado en la impresionante cordillera de los Andes, justo al frente del majestuoso Nevado del Ruiz. Disfruta de la belleza natural que nos rodea mientras te relajas en nuestras cómodas cabañas o en nuestro hostal. También te invitamos a explorar los alrededores y probar nuestros deliciosos platos en el restaurante. ¡Esperamos que disfrutes de tu estancia aquí!', image: 'https://static.wixstatic.com/media/a9c13a_7ba52aefd0474d7db95197ea4b8135ae~mv2.jpeg/v1/fill/w_587,h_444,q_85,usm_0.66_1.00_0.01/a9c13a_7ba52aefd0474d7db95197ea4b8135ae~mv2.jpeg', location: 'Colombia', daily_rate: 150.00)
Glamping.create(name: 'Glamping Suite Nature', glamping_type: 'Forest, Relax, Spa',
                description: 'All Natural es un nuevo concepto de alojamiento que busca brindarle al huésped una experiencia única en conexión con la naturaleza. Nuestra misión es construir espacios mágicos para que disfrutes momentos inolvidables con tus seres queridos en una zona natural, tranquila y llena de vida.', image: 'https://www.allnaturalcolombia.com/wp-content/uploads/2022/03/IMG_3742-scaled-720x500xc.jpg', location: 'Colombia', daily_rate: 110.00)
