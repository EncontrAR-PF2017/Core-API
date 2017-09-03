# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: "lucas@encontrar.com", name: "Lucas", lastname: "DLT", password: "12345678")
user2 = User.create(email: "mauro@encontrar.com", name: "Mauro", lastname: "Marti", password: "12345678")
User.create(email: "andres@encontrar.com", name: "Andres", lastname: "Zaraza", password: "12345678")
User.create(email: "naiara@encontrar.com", name: "Naiu", lastname: "Shawalala", password: "12345678")
User.create(email: "juan@encontrar.com", name: "Juani", lastname: "Casares", password: "12345678")

mp1 = MissingPerson.create(name: "Luciana", lastname: "Camboya", dni: "39876436", age: "16", gender: "female", photo: "https://i.pinimg.com/736x/cf/95/c9/cf95c9b07c4e372be04e456df4cb81b4--model-reference-female-face-reference.jpg")
mp2 = MissingPerson.create(name: "Carlos", lastname: "Altamira", dni: "34347436", age: "30", gender: "male", photo: "http://www.uni-regensburg.de/Fakultaeten/phil_Fak_II/Psychologie/Psy_II/beautycheck/english/prototypen/m_sexy_gr.jpg")
MissingPerson.create(name: "Marina", lastname: "Ibramovich", dni: "28876956", age: "65", gender: "female", photo: "http://dmv.barstoolsports.com/files/2014/03/Screen-Shot-2014-03-24-at-4.41.58-PM.png")

Finder.create(device_id: "r1eMljJ7djlOAKYkFYte", os: "android", latitude: "-34.673216", longitude: "-58.473763") # Villa Lugano
Finder.create(device_id: "J9GexS9gtT2vIhbHuxQd", os: "android", latitude: "-34.581112", longitude: "-58.420514") # Palermo
Finder.create(device_id: "BOw9G4z7rITWiEgGXAbo", os: "android", latitude: "-34.661104", longitude: "-58.484043") # Mataderos
Finder.create(device_id: "SFVWDlDTnBaUBamQOVw0", os: "android", latitude: "-34.598437", longitude: "-58.499901") # Villa Devoto
Finder.create(device_id: "Tc2US3QbuyXzBwwd2puZ", os: "android", latitude: "-34.618005", longitude: "-58.436386") # Caballito

Zone.create(name: "Villa Lugano 1", south_west_lat: "-34.690947", south_west_long: "-58.484310", north_east_lat: "-34.662684", north_east_long: "-58.458558")
Zone.create(name: "Plaza Italia", south_west_lat: "-34.582707", south_west_long: "-58.423094", north_east_lat: "-34.580365", north_east_long: "-58.419520")

ci1 = CampaignImage.create(url: "https://media0ch-a.akamaihd.net/84/90/fdc16ea96bb48af46cfb847547fa3629.jpg")
ci2 = CampaignImage.create(url: "http://res.freestockphotos.biz/pictures/14/14599-a-beautiful-young-girl-playing-on-a-playground-with-a-dog-pv.jpg")
ci3 = CampaignImage.create(url: "http://www.wcparksandrec.com/kids_birthday_party_ideas_i9a1lo.jpg")
ci4 = CampaignImage.create(url: "http://cdn.skim.gs/image/upload/v1456342653/msi/family_beach_vacation_is8uph.jpg")

campaign1 = Campaign.create(title: "Todos por Luli", description: "Estamos buscando a Luciana, se perdio el lunes pasado por la noche", user_id: user1.id, missing_person_id: mp1.id)
campaign2 = Campaign.create(title: "Busqueda por Carlos", description: "Carlos, tu familia te esta buscando", user_id: user2.id, missing_person_id: mp2.id)

campaign1.campaign_images << ci1
campaign1.campaign_images << ci2
campaign2.campaign_images << ci3
campaign2.campaign_images << ci4