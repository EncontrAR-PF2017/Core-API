# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: "lucas@encontrar.com", name: "Lucas", lastname: "DLT", password: "12345678")
user2 = User.create(email: "mauro@encontrar.com", name: "Mauro", lastname: "Marti", password: "12345678")
user3 = User.create(email: "andres@encontrar.com", name: "Andres", lastname: "Zaraza", password: "12345678")
user4 = User.create(email: "naiara@encontrar.com", name: "Naiu", lastname: "Shawalala", password: "12345678")
user5 = User.create(email: "juan@encontrar.com", name: "Juani", lastname: "Casares", password: "12345678")


mp1 = MissingPerson.create(name: "Candela", lastname: "Rodriguez", dni: "42876436", age: "11", gender: "female", photo:"https://i.gyazo.com/851b97f968db4df93a2bfa808c1eb325.png")
mp2 = MissingPerson.create(name: "Alberto", lastname: "Quinteros", dni: "17039495", age: "53", gender: "male", photo:"https://i.gyazo.com/2fcbae79b2a8c1e18f165ab1b8af4095.png")
mp3 = MissingPerson.create(name: "Alexander", lastname: "Noziglia", dni: "59896406", age: "9", gender: "male", photo: "https://i.gyazo.com/b09d07551e6b04979f54f3fa863fff14.png")
mp4 = MissingPerson.create(name: "Alicia", lastname: "Yasinelli", dni: "29607679", age: "28", gender: "female", photo: "https://i.gyazo.com/d59eebd9b650a1773ca4f43f9ff34419.png")
mp5 = MissingPerson.create(name: "Alum", lastname: "Langone Avalo", dni: "56978064", age: "4", gender: "female", photo: "https://i.gyazo.com/e7c06f9323c2160fe5dec77cd3c1b515.png")
mp6 = MissingPerson.create(name: "Anahi", lastname: "Benitez", dni: "40576174", age: "13", gender: "female", photo: "https://i.gyazo.com/bbcf8aae5ff93782ef1bd817554d0a37.png")
mp7 = MissingPerson.create(name: "Araceli", lastname: "Fulles", dni: "43567194", age: "14", gender: "female", photo: "https://i.gyazo.com/42a148acbf50ab78a129966a4ed89b63.png")
mp8 = MissingPerson.create(name: "Cesar", lastname: "Arguello", dni: "19769476", age: "62", gender: "male", photo: "https://i.gyazo.com/c9ffe2fedace436c0e593d68554974de.png")
mp9 = MissingPerson.create(name: "Dario Alejandro", lastname: "Benitez", dni: "28769783", age: "37", gender: "male", photo: "https://i.gyazo.com/15717f4a46eb0ab8966048cfc65d6422.png")
mp10 = MissingPerson.create(name: "Johana", lastname: "Ramallo", dni: "35687980", age: "23", gender: "female", photo: "https://i.gyazo.com/7ea0448854f8f25ff984faaee8ff324f.png")
mp11 = MissingPerson.create(name: "Marcelo Omar", lastname: "Alegre", dni: "24576873", age: "26", gender: "male", photo: "https://i.gyazo.com/b6c49ab36371b8d17e33bc5d3708f942.png")
mp12 = MissingPerson.create(name: "Paulino", lastname: "Araujo", dni: "15763462", age: "54", gender: "male", photo: "https://i.gyazo.com/60e2794fdb9ba5d2490328f0105f3333.png")
mp13 = MissingPerson.create(name: "Santiago", lastname: "Maldona", dni: "36516455", age: "28", gender: "male", photo: "https://i.gyazo.com/f71cf81d5423fd218b9054ff2e8b6e39.png")
mp14 = MissingPerson.create(name: "Sofia", lastname: "Viale", dni: "43517485", age: "7", gender: "female", photo: "https://i.gyazo.com/0d1f0bfb6293aa83aed4699e803b1070.png")
mp15 = MissingPerson.create(name: "Sol", lastname: "Martinez", dni: "45626627", age: "9", gender: "female", photo: "https://i.gyazo.com/551fe527f5aa5be9c446980c3973048d.png")




Finder.create(device_id: "r1eMljJ7djlOAKYkFYte", os: "android", latitude: "-34.673216", longitude: "-58.473763") # Villa Lugano
Finder.create(device_id: "J9GexS9gtT2vIhbHuxQd", os: "android", latitude: "-34.581112", longitude: "-58.420514") # Palermo
Finder.create(device_id: "BOw9G4z7rITWiEgGXAbo", os: "android", latitude: "-34.661104", longitude: "-58.484043") # Mataderos
Finder.create(device_id: "SFVWDlDTnBaUBamQOVw0", os: "android", latitude: "-34.598437", longitude: "-58.499901") # Villa Devoto
Finder.create(device_id: "Tc2US3QbuyXzBwwd2puZ", os: "android", latitude: "-34.618005", longitude: "-58.436386") # Caballito

Zone.create(label: "Villa Lugano 1", south_west_lat: "-34.690947", south_west_long: "-58.484310", north_east_lat: "-34.662684", north_east_long: "-58.458558")
Zone.create(label: "Plaza Italia", south_west_lat: "-34.582707", south_west_long: "-58.423094", north_east_lat: "-34.580365", north_east_long: "-58.419520")

ci1 = CampaignImage.create(url: "https://i.gyazo.com/60362c597cabac2417f594fc0724d66b.png") #Candela
ci2 = CampaignImage.create(url: "https://i.gyazo.com/62ac1e788352766998bf2b9e94746a32.png") #Candela
ci3 = CampaignImage.create(url: "https://i.gyazo.com/6282b1928e9d3fb77b98564ada51c14d.png") #Araceli
ci4 = CampaignImage.create(url: "https://i.gyazo.com/20aaea92bd0486ae933232999b08703c.png") #Araceli
ci5 = CampaignImage.create(url: "https://i.gyazo.com/a8fc7b366cdf116a252eba8d5b66be4a.png") #Araceli
ci6 = CampaignImage.create(url: "https://i.gyazo.com/332bddd195fcc09d84db7317930c3442.png") #Anahi
ci7 = CampaignImage.create(url: "https://i.gyazo.com/8807e6e703e92a47b1f848a9bea9882a.png") #Johana
ci8 = CampaignImage.create(url: "https://i.gyazo.com/7032f503b3623f12db23866d1d56724d.png") #Johana
ci9 = CampaignImage.create(url: "https://i.gyazo.com/c7b1b2e37b63d30e9d9c88b8d599c529.png") #Santiago
ci10 = CampaignImage.create(url: "https://i.gyazo.com/d78ef92a7a2f02212cc5db0e552764b7.png")#Santiago
ci11 = CampaignImage.create(url: "https://i.gyazo.com/1e38d8518ce69ba79e08feabcb1ca3ed.png")#Santiago
ci12 = CampaignImage.create(url: "https://i.gyazo.com/e3b354e14abccb55e405efd0e824e584.png")#Santiago


campaign1 = Campaign.create(title: "Buscamos a Candela", description: "Candela desaparecio el pasado Lunes 22/08", user_id: user1.id, missing_person_id: mp1.id, expire_date: "2017-12-26")
campaign2 = Campaign.create(title: "Ayudemos a encontrar a Alberto", description: "Fue visto por ultima vez el 08/08/2017 en paternal", user_id: user1.id, missing_person_id: mp2.id, expire_date: "2017-08-01")
campaign3 = Campaign.create(title: "Todos con Alex", description: "El 16 de Abril de 2015 desaparecio de la puerta del jardin", user_id: user1.id, missing_person_id: mp3.id, expire_date: "2017-11-25")
campaign4 = Campaign.create(title: "Busquemos a Alicia!", description: "Esta bajo tratamiento medico. Desaparecio 07/04/2017, en Rosario, Santa Fe, Argentina", user_id: user1.id, missing_person_id: mp4.id, expire_date: "2018-02-01")
campaign5 = Campaign.create(title: "Alum esta perdida", description: "Fue vista con su padre por ultima vez en el shopping Alto Palermo el 05/06/2017", user_id: user1.id, missing_person_id: mp5.id, expire_date: "2018-12-26")
campaign6 = Campaign.create(title: "Se busca a Anahi", description: "Anahi salio de su casa y dijo que se iba a caminar. Jamas volvio", user_id: user1.id, missing_person_id: mp6.id, expire_date: "2016-04-02")
campaign7 = Campaign.create(title: "Araceli no aparece", description: "Envio un ultimo mensaje en donde avisaba que estaba yendo a la casa", user_id: user1.id, missing_person_id: mp7.id, expire_date: "2017-06-14")
campaign8 = Campaign.create(title: "Encontemos a Cesar", description: "Alto, de contextura delgada, cabello castano claro y ojos verdes. Padece Esquizofrenia. Trabajaba de pintor de obra y cartoneaba. Esta bajo tratamiento medico.", user_id: user1.id, missing_person_id: mp8.id, expire_date: "2017-12-29")
campaign9 = Campaign.create(title: "No encontramos a Dario", description: "1.80 aprox contextura normal, pelo castano oscuro ojos castanos oscuros,vestia camiseta de boca,joggins negro zapatillas blancas tenia un tatuaje de un tigre en el brazo izquierdo", user_id: user1.id, missing_person_id: mp9.id, expire_date: "2018-05-01")
campaign10 = Campaign.create(title: "Johana sigue sin aparecer", description: "La ultima vez que la vieron, luego de que se despidiera de una amiga en la zona de 1 y 63, La Plata", user_id: user1.id, missing_person_id: mp10.id, expire_date: "2018-02-05")
campaign11 = Campaign.create(title: "Marcelo nos necesita", description: "Esta bajo tratamiento medico. Vestia; short de color azul, remera beige y zapatillas azul", user_id: user1.id, missing_person_id: mp11.id, expire_date: "2018-03-11")
campaign12 = Campaign.create(title: "Estamos buscando a Paulino", description: "Fue visto por ultima vez el 17/06/2017, en Capital Federal", user_id: user1.id, missing_person_id: mp12.id, expire_date: "2017-12-07")
campaign13 = Campaign.create(title: "Donde esta Santiago?", description: "Fue visto por ultima vez en el desalojo de gendarmeria en localidad de Cushamen", user_id: user1.id, missing_person_id: mp13.id, expire_date: "2017-09-25")
campaign14 = Campaign.create(title: "Sofi te estamos buscando", description: "Sofia desaparecio en una plaza mientras su madre se distrajo unos minutos", user_id: user1.id, missing_person_id: mp14.id, expire_date: "2017-12-30")
campaign15 = Campaign.create(title: "Ayudemos a encontrar a Sol", description: "Sol fue vista por ultima vez el pasado 2 de febrero", user_id: user1.id, missing_person_id: mp15.id, expire_date: "2018-04-05")


campaign1.campaign_images << ci1 #Candela
campaign1.campaign_images << ci2 #Candela
campaign7.campaign_images << ci3 #Araceli
campaign7.campaign_images << ci4 #Araceli
campaign7.campaign_images << ci5 #Araceli
campaign5.campaign_images << ci6 #Anahi
campaign10.campaign_images << ci7 #Johana
campaign10.campaign_images << ci8 #Johana
campaign13.campaign_images << ci9 #Santiago
campaign13.campaign_images << ci10 #Santiago
campaign13.campaign_images << ci11 #Santiago
campaign13.campaign_images << ci12 #Santiago

#Agregado
campaign2.campaign_images << ci10 
campaign3.campaign_images << ci10 
campaign4.campaign_images << ci10
campaign6.campaign_images << ci10
campaign8.campaign_images << ci10
campaign9.campaign_images << ci10
campaign11.campaign_images << ci10
campaign12.campaign_images << ci10
campaign14.campaign_images << ci10
campaign15.campaign_images << ci10

Alert.create(title: "Candela no aparece", campaign_id: 1, zone_id: 1, expire_date: "2017-12-23", notifications_sent: 2)
Alert.create(title: "Donde esta Santiago?", campaign_id: 13, zone_id: 2, expire_date: "2017-09-21", notifications_sent: 3)
Alert.create(title: "Ayudemos a encontrar a Araceli", campaign_id: 7, zone_id: 1, expire_date: "2017-06-12", notifications_sent: 1)
Alert.create(title: "Colaboremos buscando a Paulino", campaign_id: 12, zone_id: 2, expire_date: "2017-12-05", notifications_sent: 0)
Alert.create(title: "Busquemos a Anahi", campaign_id: 5, zone_id: 2, expire_date: "2018-12-23", notifications_sent: 0)
Alert.create(title: "Encontremos a Johana", campaign_id: 10, zone_id: 1, expire_date: "2018-02-02", notifications_sent: 2)
Alert.create(title: "No encontramos a Alex", campaign_id: 3, zone_id: 2, expire_date: "2017-11-22", notifications_sent: 1)
