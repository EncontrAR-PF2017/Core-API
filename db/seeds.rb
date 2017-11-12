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


mp1 = MissingPerson.create(name: "Rosa Elizabeth", lastname: "Toledo", dni: "20637825", age: "48", gender: "female", photo:"https://i.gyazo.com/76a5e33742226b14cd97fef4ec65b404.jpg")
mp2 = MissingPerson.create(name: "Carlos Emanuel", lastname: "Zarate", dni: "30403647", age: "33", gender: "male", photo:"https://i.gyazo.com/c633b5f9935b40e3576a8dc60913c19f.jpg")
mp3 = MissingPerson.create(name: "Renee Maite", lastname: "Ragone Terrazas", dni: "41564866", age: "18", gender: "female", photo:"https://i.gyazo.com/4b12c8a20720fdd95ff0a3af0e4b3e03.png")
mp4 = MissingPerson.create(name: "Eduardo Angel", lastname: "Martinez", dni: "25539576", age: "40", gender: "male", photo:"https://i.gyazo.com/3b20ef66926b6cc92e16905e856805cf.jpg")
mp5 = MissingPerson.create(name: "Sofìa", lastname: "Herrera", dni: "45985734", age: "12", gender: "female", photo:"https://i.gyazo.com/35cc381d2fbbc644f4fe39ffc05d223a.jpg")
mp6 = MissingPerson.create(name: "Franco Gonzalo", lastname: "Pereyra", dni: "35389201", age: "26", gender: "male", photo:"https://i.gyazo.com/1ee7534fc4b1335d953160c1b374df9d.jpg")
mp7 = MissingPerson.create(name: "Oscar Alberto", lastname: "Sanabria", dni: "26496215", age: "40", gender: "male", photo:"https://i.gyazo.com/c2622a5313a774b1fc20dd1a1a88a634.jpg")
mp8 = MissingPerson.create(name: "César Enrigue", lastname: "Arguello", dni: "5584563", age: "72", gender: "male", photo:"https://i.gyazo.com/d2033049101a546cfbdcba868152138d.jpg")
mp9 = MissingPerson.create(name: "Alberto Martín", lastname: "Quintero Moyano", dni: "17640327", age: "53", gender: "male", photo:"https://i.gyazo.com/eb5094bc061977a804be0231a7b3faf9.jpg")
mp10 = MissingPerson.create(name: "Miriam Silvana", lastname: "Lopez", dni: "25330285", age: "40", gender: "female", photo:"https://i.gyazo.com/61e36ad7fae5e39786afe0dbc65e36f2.jpg")
mp11 = MissingPerson.create(name: "Esteban ", lastname: "De Carlo", dni: "8025378", age: "66", gender: "male", photo:"https://i.gyazo.com/aec036843562956ba869e980691954f2.jpg")
mp12 = MissingPerson.create(name: "Daniel Ignacio", lastname: "Cosimi", dni: "6068492", age: "70", gender: "male", photo:"https://i.gyazo.com/5ddfd4f16929e08b707eb715a240ea75.jpg")
mp13 = MissingPerson.create(name: "Johana", lastname: "Ramallo", dni: "37537281", age: "23", gender: "female", photo:"https://i.gyazo.com/c4e35245ff068d670ec68ae8f85be9c4.jpg")
mp14 = MissingPerson.create(name: "Lucas ", lastname: "Bolotti", dni: "37372834", age: "24", gender: "male", photo:"https://i.gyazo.com/ee9af95e0fd8a1395535e995a852cd3b.jpg")
mp15 = MissingPerson.create(name: "Alberto ", lastname: "Romero", dni: "5580258", age: "72", gender: "male", photo:"https://i.gyazo.com/06ab7bfa3d031e0eaac851f0ca5e7a8d.jpg")
mp16 = MissingPerson.create(name: "Cristian Fabian", lastname: "Gonzalez", dni: "25923023", age: "40", gender: "male", photo:"https://i.gyazo.com/42f19d9013679a8c720470195737fff4.jpg")
mp17 = MissingPerson.create(name: "Luis Anibal", lastname: "Lopez", dni: "5589304", age: "72", gender: "male", photo:"https://i.gyazo.com/cbef7a973172fde814cdcd9fdad68b22.jpg")
mp18 = MissingPerson.create(name: "Paulino ", lastname: "Araujo", dni: "16905256", age: "54", gender: "male", photo:"https://i.gyazo.com/b9e401e87354b1eeb3424c71f69ec467.jpg")
mp19 = MissingPerson.create(name: "Maira", lastname: "Benitez", dni: "40556823", age: "20", gender: "female", photo:"https://i.gyazo.com/8aab3e6c4ec50de2d67ba3bd065f0291.jpg")
mp20 = MissingPerson.create(name: "Ana Zulema", lastname: "Walter", dni: "8369043", age: "67", gender: "female", photo:"https://i.gyazo.com/c776b9f3faa7d06108fcfa004d4af4d4.jpg")
mp21 = MissingPerson.create(name: "Julio ", lastname: "Miranda", dni: "170475", age: "80", gender: "male", photo:"https://i.gyazo.com/6d14755dfa0cf0defbfe654097d74330.jpg")
mp22 = MissingPerson.create(name: "Roberto", lastname: "Mendez", dni: "206385", age: "77", gender: "male", photo:"https://i.gyazo.com/6cccebac3ec71c0032daa60fd851f01c.jpg")
mp23 = MissingPerson.create(name: "Alicia ", lastname: "Yasinelli", dni: "34140423", age: "28", gender: "female", photo:"https://i.gyazo.com/b9a3e4755c4f2e43affaf688d8f4266e.jpg")
mp24 = MissingPerson.create(name: "David Gaston", lastname: "Farias", dni: "32567932", age: "30", gender: "male", photo:"https://gyazo.com/4c94bd44fc3a904f9e9902cd00d1aec2.jpg")
mp25 = MissingPerson.create(name: "Hilario Jose", lastname: "Patrignani", dni: "3903487", age: "74", gender: "male", photo:"https://i.gyazo.com/6d86ef853895d01e847ef4c5429920ae.png")
mp26 = MissingPerson.create(name: "Elsa ", lastname: "Martinez", dni: "8285845", age: "67", gender: "female", photo:"https://gyazo.com/9c5b97c23cb86e8b0fa7863664189139.jpg")
mp27 = MissingPerson.create(name: "Manuel ", lastname: "Ifran", dni: "5327482", age: "71", gender: "male", photo:"https://i.gyazo.com/0013a2c184856999dbc2e8ff4a7c68fb.png")
mp28 = MissingPerson.create(name: "Marcelo Omar", lastname: "Alegre", dni: "35627854", age: "26", gender: "male", photo:"https://gyazo.com/ca1cba1c7f591026be7b87b50c122980.jpg")
mp29 = MissingPerson.create(name: "Graciela ", lastname: "Quiroga", dni: "10245503", age: "63", gender: "female", photo:"https://gyazo.com/2fa04bd380da0fb139b3f28c21a79920.jpg")
mp30 = MissingPerson.create(name: "Viviana ", lastname: "Luna", dni: "21829465", age: "46", gender: "female", photo:"https://i.gyazo.com/0c1caf7c19a32d20ff83ef080b00c445.png")
mp31 = MissingPerson.create(name: "Joel David", lastname: "Juarez", dni: "39561284", age: "21", gender: "male", photo:"https://gyazo.com/8d86135f787d2bfd23c75e6ff894718d.jpg")
mp32 = MissingPerson.create(name: "Vicente Sebastian ", lastname: "Gil", dni: "28467382", age: "35", gender: "male", photo:"https://gyazo.com/86b63a7041035a7837172996a53507c3.jpg")
mp33 = MissingPerson.create(name: "Roberto Clemente", lastname: "Carrasco", dni: "8286294", age: "67", gender: "male", photo:"https://gyazo.com/55c56aaf375345da631cdaf0ae49f7fd.jpg")
mp34 = MissingPerson.create(name: "Fabian Alejandro", lastname: "Ochoa", dni: "22569627", age: "45", gender: "male", photo:"https://gyazo.com/cac7e574e68ae90a7579d086392a460b.jpg")
mp35 = MissingPerson.create(name: "Guillermo ", lastname: "Diaz", dni: "34109867", age: "28", gender: "male", photo:"https://gyazo.com/7e2f08bc555fef5f527e3753bb6802a0.jpg")
mp36 = MissingPerson.create(name: "Ramón Del Valle", lastname: "Coronel", dni: "6068023", age: "70", gender: "male", photo:"https://gyazo.com/32fa5e1d763648ae8fbd87edcb67b92b.jpg")
mp37 = MissingPerson.create(name: "Dalmasio Antonio", lastname: "Mansilla", dni: "19869235", age: "50", gender: "male", photo:"https://gyazo.com/f4cd5db27acece91dbb1dbe6b5f5fdd8.jpg")
mp38 = MissingPerson.create(name: "Pedro Sebastian", lastname: "Ruiz Diaz", dni: "34647234", age: "28", gender: "male", photo:"https://gyazo.com/833c9576fc5ec9b329533f163ca4ab63.jpg")
mp39 = MissingPerson.create(name: "Marcelino", lastname: "Olaire", dni: "31332542", age: "32", gender: "male", photo:"https://i.gyazo.com/6dd4ab82478a79403065ab5112604569.png")
mp40 = MissingPerson.create(name: "Eduardo Norberto", lastname: "Dellacroce", dni: "14683026", age: "57", gender: "male", photo:"https://gyazo.com/35ebecfb0b34d86aad2d0ba414ff741a.jpg")
mp41 = MissingPerson.create(name: "Claudia ", lastname: "Ferro", dni: "17384925", age: "52", gender: "female", photo:"https://i.gyazo.com/b7c5c195df4cb3aa1213dae214c606da.png")
mp42 = MissingPerson.create(name: "Hector", lastname: "Algañaraz", dni: "10460274", age: "63", gender: "male", photo:"https://gyazo.com/b4f449da394de225b49d78994fcff7c8.jpg")
mp43 = MissingPerson.create(name: "Dario Alejandro", lastname: "Benitez", dni: "26526920", age: "38", gender: "male", photo:"https://gyazo.com/ceec056b28786b682620b874bf0061fe.jpg")
mp44 = MissingPerson.create(name: "Juan", lastname: "Sanchez", dni: "203743", age: "84", gender: "male", photo:"https://gyazo.com/7ad276237a90fead5cfa90e7849a18a0.jpg")
mp45 = MissingPerson.create(name: "José Rodolfo", lastname: "Sotelo", dni: "13274823", age: "59", gender: "male", photo:"https://gyazo.com/f9a5c9bae30a695ecf71c07d270df1f6.jpg")
mp46 = MissingPerson.create(name: "Mabel Rosa", lastname: "Vera", dni: "28564732", age: "36", gender: "female", photo:"https://gyazo.com/5241f75b1e91fe18d7b099ba382e30ce.jpg")
mp47 = MissingPerson.create(name: "Emanuel", lastname: "Bonnefon", dni: "34209564", age: "28", gender: "male", photo:"https://gyazo.com/f986741ae6e3147ad42fc0efe0abfa44.jpg")
mp48 = MissingPerson.create(name: "Santiago", lastname: "Maldonado", dni: "34864902", age: "27", gender: "male", photo:"https://gyazo.com/2b6aac8b5c03c468d51218f66f22ad93.jpg")





Finder.create(device_id: "r1eMljJ7djlOAKYkFYte", os: "android", latitude: "-34.673216", longitude: "-58.473763") # Villa Lugano
Finder.create(device_id: "J9GexS9gtT2vIhbHuxQd", os: "android", latitude: "-34.581112", longitude: "-58.420514") # Palermo
Finder.create(device_id: "BOw9G4z7rITWiEgGXAbo", os: "android", latitude: "-34.661104", longitude: "-58.484043") # Mataderos
Finder.create(device_id: "SFVWDlDTnBaUBamQOVw0", os: "android", latitude: "-34.598437", longitude: "-58.499901") # Villa Devoto
Finder.create(device_id: "Tc2US3QbuyXzBwwd2puZ", os: "android", latitude: "-34.618005", longitude: "-58.436386") # Caballito

Zone.create(label: "Villa Lugano", south_west_lat: "-34.690947", south_west_long: "-58.484310", north_east_lat: "-34.662684", north_east_long: "-58.458558")
Zone.create(label: "Plaza Italia", south_west_lat: "-34.582707", south_west_long: "-58.423094", north_east_lat: "-34.580365", north_east_long: "-58.419520")
Zone.create(label: "Floresta", south_west_lat: "-34.627256", south_west_long: "-58.499229", north_east_lat: "-34.621500", north_east_long: "-58.494165")
Zone.create(label: "UTN Campus", south_west_lat: "-34.661911", south_west_long: "-58.473647", north_east_lat: "-34.654260", north_east_long: "-58.463154")
Zone.create(label: "UTN Medrano", south_west_lat: "-34.600329", south_west_long: "-58.423760", north_east_lat: "-34.595586", north_east_long: "-58.41503")



ci1 = CampaignImage.create(url: "https://i.gyazo.com/8807e6e703e92a47b1f848a9bea9882a.png") #Johana
ci2 = CampaignImage.create(url: "https://i.gyazo.com/7032f503b3623f12db23866d1d56724d.png") #Johana
ci3 = CampaignImage.create(url: "https://i.gyazo.com/c7b1b2e37b63d30e9d9c88b8d599c529.png") #Santiago
ci4 = CampaignImage.create(url: "https://i.gyazo.com/d78ef92a7a2f02212cc5db0e552764b7.png") #Santiago
ci5 = CampaignImage.create(url: "https://i.gyazo.com/1e38d8518ce69ba79e08feabcb1ca3ed.png") #Santiago
ci6 = CampaignImage.create(url: "https://i.gyazo.com/e3b354e14abccb55e405efd0e824e584.png") #Santiago
ci7 = CampaignImage.create(url: "https://gyazo.com/ed4ea95f968155ab5c549cf57ff86780.jpg") #Claudia Ferro
ci8 = CampaignImage.create(url: "https://i.gyazo.com/78891a9b05ddda16f34c73e06c7ba87f.jpg") #Claudia Ferro
ci9 = CampaignImage.create(url: "https://gyazo.com/31e54062aae2db51413e905be26948a0.jpg") #Sofia Herrera
ci10 = CampaignImage.create(url: "https://gyazo.com/c3c4f2c3c23158beb65e326ab38db817.jpg") #Sofia Herrera
ci11 = CampaignImage.create(url: "https://gyazo.com/1635b028f6d6fc91a83667142b82832c.jpg") #Sofia Herrera
ci12 = CampaignImage.create(url: "https://gyazo.com/b11bc1ade496dd672f448077e36e3173.jpg") #Carlos Zarate
ci13 = CampaignImage.create(url: "https://gyazo.com/a2116c38b302226e8b1595cf15afb5df.jpg") #Carlos Zarate
ci14 = CampaignImage.create(url: "https://gyazo.com/56636429f9b816e9f4c163692515a78d.jpg") #Vicente Gil
ci15 = CampaignImage.create(url: "https://gyazo.com/00fdedb4f7937676907e8808c1cef828.jpg") #Vicente Gil






campaign1 = Campaign.create(title: "Rosa Elizabeth Toledo está perdida.", description: "Fue vista por última vez el 06/02/2016, en Morón, Buenos Aires, Argentina.", user_id: user1.id, missing_person_id: mp1.id, expire_date: "2018-10-03")
campaign2 = Campaign.create(title: "Carlos Emanuel Zárate está perdido.", description: "Fue visto por última vez el 02/10/2017, en Camino rural entre Toro Pozo y El Churqui, ambos en departamento Jimenez, Santiago del Estero, Argentina.  Alrededor de 1,80 mts, pelo corto con rulos, ojos marrones, tez trigueña Circulaba con una moto negra.", user_id: user1.id, missing_person_id: mp2.id, expire_date: "2018-10-04")
campaign3 = Campaign.create(title: "Renee Maite Ragone Terrazas está perdida.", description: "Fue vista por última vez el 13/08/2003, en Capital Federal, Argentina.", user_id: user1.id, missing_person_id: mp3.id, expire_date: "2018-10-05")
campaign4 = Campaign.create(title: "Eduardo Angel Martinez está perdido.", description: "Fue visto por última vez el 23/12/2016, en Capital Federal, Argentina.", user_id: user1.id, missing_person_id: mp4.id, expire_date: "2018-10-06")
campaign5 = Campaign.create(title: "Sofía Herrera está perdida.", description: "Fue vista por última vez el 28/09/2008, en Tierra del Fuego, Argentina.", user_id: user1.id, missing_person_id: mp5.id, expire_date: "2018-10-07")
campaign6 = Campaign.create(title: "Franco Gonzalo Pereyra está perdido.", description: "Fue visto por última vez el 13/10/2016, en Capital Federal, Argentina.", user_id: user1.id, missing_person_id: mp6.id, expire_date: "2018-10-08")
campaign7 = Campaign.create(title: "Oscar Alberto Sanabria está perdido.", description: "Fue visto por última vez el 01/10/2013, en Buenos Aires, Argentina.Viajó desde Mar de Ajó por un trabajo a Florencio Varela.", user_id: user1.id, missing_person_id: mp7.id, expire_date: "2018-10-09")
campaign8 = Campaign.create(title: "César Enrique Argüello está perdido.", description: "Fue visto por última vez el 29/12/2007, en Alto Alberdi, Córdoba, Argentina. Alto, de contextura delgada, cabello castaño claro y ojos verdes. Padece Esquizofrenia. Trabajaba de pintor de obra y cartoneaba. Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp8.id, expire_date: "2018-10-10")
campaign9 = Campaign.create(title: "Alberto Martín Quintero Moyano está perdido.", description: "Fue visto por última vez el 08/08/2017, en Córdoba, Argentina.", user_id: user1.id, missing_person_id: mp9.id, expire_date: "2018-10-11")
campaign10 = Campaign.create(title: "Miriam Silvana Lopez está perdida.", description: "Fue vista por última vez el 25/11/2013, en Misiones, Argentina.", user_id: user1.id, missing_person_id: mp10.id, expire_date: "2018-10-12")
campaign11 = Campaign.create(title: "Esteban De Carlo está perdido.", description: "Fue visto por última vez el 03/03/2012, en San Juan, Argentina.", user_id: user1.id, missing_person_id: mp11.id, expire_date: "2018-10-13")
campaign12 = Campaign.create(title: "Daniel Ignacio Cosimi está perdido.", description: "Fue visto por última vez el 29/08/2013, en San Totome, San Totome, Santa Fe, Argentina. 1,70mts tez blanca, delgado, Ojos Marrones. Falta de su casa de Santotomé Santa Fe desde el 29 de Agosto de 2013 Amnesia temporal Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp12.id, expire_date: "2018-10-14")
campaign13 = Campaign.create(title: "Johana Ramallo está perdida.", description: "Fue vista por última vez el 26/07/2017, en La Plata, Buenos Aires, Argentina.", user_id: user1.id, missing_person_id: mp13.id, expire_date: "2018-10-15")
campaign14 = Campaign.create(title: "Lucas Bolotti está perdido.", description: "Fue visto por última vez el 19/07/2017, en Papagayos, Chacabuco, San Luis, Argentina. Tiene 24 años. Debería tener unos anteojos con marco bordo, le faltan las paletas (dientes delanteros), en este momento debe tener barba, llevaba un buzo rojo con la frase “nido de águilas”, un jogging azul marino y zapatillas Adidas celestes”,", user_id: user1.id, missing_person_id: mp14.id, expire_date: "2018-10-16")
campaign15 = Campaign.create(title: "Alberto Romero está perdido.", description: "Fue visto por última vez el 20/11/2014, en Monte Grande,Esteban Echeverria, Buenos Aires, Argentina. Delgado,cabello canoso de un 1,65 de altura Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp15.id, expire_date: "2018-10-17")
campaign16 = Campaign.create(title: "Cristian Fabian Gonzalez está perdido.", description: "Fue visto por última vez el 01/05/2017, en Microcentro, Capital Federal, Argentina.1.70, Ultima vez visto en Tribunales caba, con jean y buzo azul, luego en el barrio de FERRARI zona oeste, Merlo. Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp16.id, expire_date: "2019-05-04")
campaign17 = Campaign.create(title: "Luis Anibal Lopez está perdido.", description: "Fue visto por última vez el 27/08/1994, en Partido de Gral. Sarmiento, Buenos Aires, Argentina.", user_id: user1.id, missing_person_id: mp17.id, expire_date: "2019-05-05")
campaign18 = Campaign.create(title: "Paulino Araujo está perdido.", description: "Fue visto por última vez el 17/06/2017, en Capital Federal, Argentina.", user_id: user1.id, missing_person_id: mp18.id, expire_date: "2019-05-06")
campaign19 = Campaign.create(title: "Maira Benitez está perdida. ", description: "Fue vista por última vez el 17/12/2016, en Villa Angela, Chaco, Argentina.", user_id: user1.id, missing_person_id: mp19.id, expire_date: "2019-05-07")
campaign20 = Campaign.create(title: "Ana Zulema Walter está perdida.", description: "Fue vista por última vez el 01/06/2017, en Viedma, Río Negro, Argentina.", user_id: user1.id, missing_person_id: mp20.id, expire_date: "2019-05-08")
campaign21 = Campaign.create(title: "Julio Miranda está perdido.", description: "Fue visto por última vez el 12/03/2017, en Bolivar, Buenos Aires, Argentina. Vestía campera azul y blanca", user_id: user1.id, missing_person_id: mp21.id, expire_date: "2019-05-09")
campaign22 = Campaign.create(title: "Roberto Mendez está perdido.", description: "Fue visto por última vez el 18/04/2017, en José C Paz, Buenos Aires, Argentina.", user_id: user1.id, missing_person_id: mp22.id, expire_date: "2019-05-10")
campaign23 = Campaign.create(title: "Alicia Yasinelli está perdida.", description: "Fue vista por última vez el 07/04/2017, en Rosario, Santa Fe, Argentina. Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp23.id, expire_date: "2019-05-11")
campaign24 = Campaign.create(title: "David Gastón Farias está perdido.", description: "Fue visto por última vez el 04/05/2017, en Banfield, Buenos Aires, Argentina. 1,70 de altura, ojos marrones, pelo Castaño, morrudo y camina chueco. No tiene ninguna enfermedad Pantalón marrón y remera negra, zapatillas deportivas.", user_id: user1.id, missing_person_id: mp24.id, expire_date: "2019-05-12")
campaign25 = Campaign.create(title: "Hilario José Patrignani está perdido.", description: "Fue visto por última vez el 02/04/2017, en Mar del Plata, Buenos Aires, Argentina.", user_id: user1.id, missing_person_id: mp25.id, expire_date: "2019-05-13")
campaign26 = Campaign.create(title: "Elsa Martínez está perdida.", description: "Fue vista por última vez el 28/02/2017, en Santa Fe, Argentina. Vestía una remera roja (la de la foto), capri negro y ojotas verde claro. Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp26.id, expire_date: "2020-03-10")
campaign27 = Campaign.create(title: "Manuel ifran está perdido.", description: "Fue visto por última vez el 12/04/2017, en Barrio Mini City, Posadas, Misiones, Argentina. hombre de 1,70 aprox. contextura normal, cabello castaño con canas, tez blanca . chomba color celeste, pantalon de vestir marron, cinto. Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp27.id, expire_date: "2020-03-11")
campaign28 = Campaign.create(title: "Marcelo Omar Alegre está perdido.", description: "Fue visto por última vez el 30/03/2017, en Corrientes, Argentina. vestía; short de color azul, remera beige y zapatillas azul, mide aproximadamente 1.60 de altura, delgado, tez morena, pelo cortado al ras, tiene tatuajes en ambos brazos Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp28.id, expire_date: "2020-03-12")
campaign29 = Campaign.create(title: "Graciela Quiroga está perdida.", description: "Fue vista por última vez el 23/02/2014, en Rosario, Santa Fe, Argentina.", user_id: user1.id, missing_person_id: mp29.id, expire_date: "2020-03-13")
campaign30 = Campaign.create(title: "Viviana Luna está perdida.", description: "Fue vista por última vez el 07/12/2016, en Potrerillos, Mendoza, Argentina. vestía zapatillas blancas y campera azul.", user_id: user1.id, missing_person_id: mp30.id, expire_date: "2020-03-14")
campaign31 = Campaign.create(title: "Joel David Juarez está perdido.", description: "Fue visto por última vez el 19/01/2017, en Rosario, Santa Fe, Argentina.", user_id: user1.id, missing_person_id: mp31.id, expire_date: "2020-03-15")
campaign32 = Campaign.create(title: "Vicente Sebastian Gil está perdido.", description: "Fue visto por última vez el 08/10/2016, en San Luis , San Luis, Argentina. 1,75 metros de altura , contextura fisica robusta, cabello corto de color castaño oscuro, piel de tez blanca,presenta en su rostro una barba tipo candado, posee dor tatuajes, uno en el brazo derecho y otro en la pierna izquierda", user_id: user1.id, missing_person_id: mp32.id, expire_date: "2020-03-16")
campaign33 = Campaign.create(title: "Roberto Clemente Carrasco está perdido.", description: "Fue visto por última vez el 13/10/2014, en Luján, Buenos Aires, Argentina. Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp33.id, expire_date: "2020-03-17")
campaign34 = Campaign.create(title: "Fabian Alejandro ochoa está perdido.", description: "Fue visto por última vez el 13/02/2017, en en calle Sucre , Córdoba, Argentina. Mide 1,85, canoso, usa anteojos, tiene soriasis en un brazo. En el momento que desapareció vestia remera azul, pantalón blanco y zapatos marrones. Está bajo tratamiento médico.", user_id: user1.id, missing_person_id: mp34.id, expire_date: "2020-03-18")
campaign35 = Campaign.create(title: "Guillermo Diaz está perdido.", description: "Fue visto por última vez el 15/12/2015, en Pilar, Buenos Aires, Argentina.", user_id: user1.id, missing_person_id: mp35.id, expire_date: "2020-03-19")
campaign36 = Campaign.create(title: "Ramon del Valle Coronel está perdido.", description: "Fue visto por última vez el 25/02/2017, en Capital Federal, Argentina. Salió de su trabajo de la calle Cerrito y Rivadavia. Vestia un pantalon beige con una remera gris con un numero.", user_id: user1.id, missing_person_id: mp36.id, expire_date: "2020-03-20")
campaign37 = Campaign.create(title: "Claudia Ferro está perdida.", description: "Fue vista por última vez el 26/12/2016, en Capital Federal, Argentina.", user_id: user1.id, missing_person_id: mp41.id, expire_date: "2021-03-03")
campaign38 = Campaign.create(title: "Santiago Maldonado está perdido.", description: "Fue visto por última vez el 01/08/2017, en Chubut, Argentina.", user_id: user1.id, missing_person_id: mp48.id, expire_date: "2017-10-22")



campaign13.campaign_images << ci1 #Johana
campaign13.campaign_images << ci2 #Johana
campaign38.campaign_images << ci3 #Santiago
campaign38.campaign_images << ci4 #Santiago
campaign38.campaign_images << ci5 #Santiago
campaign38.campaign_images << ci6 #Santiago
campaign37.campaign_images << ci7 #Claudia Ferro
campaign37.campaign_images << ci8 #Claudia Ferro
campaign5.campaign_images << ci9 #Sofia Herrera
campaign5.campaign_images << ci10 #Sofia Herrera
campaign5.campaign_images << ci11 #Sofia Herrera
campaign2.campaign_images << ci12 #Carlos Zarate
campaign2.campaign_images << ci13 #Carlos Zarate
campaign32.campaign_images << ci14 #Vicente Gil
campaign32.campaign_images << ci15 #Vicente Gil





Alert.create(title: "Donde esta Santiago Maldonado?", campaign_id: 38, zone_id: 2, expire_date: "2017-09-21", notifications_sent: 3)
Alert.create(title: "Colaboremos buscando a Paulino", campaign_id: 18, zone_id: 3, expire_date: "2018-10-23", notifications_sent: 2)
Alert.create(title: "Encontremos a Johana", campaign_id: 13, zone_id: 2, expire_date: "2018-05-23", notifications_sent: 5)
Alert.create(title: "Buscamos a Vicente Gil", campaign_id: 32, zone_id: 1, expire_date: "2018-03-02", notifications_sent: 2)
Alert.create(title: "Buscando a Claudia Ferro", campaign_id: 37, zone_id: 4, expire_date: "2018-10-01", notifications_sent: 6)
Alert.create(title: "Estamos buscando a Sofia Herrera", campaign_id: 5, zone_id: 1, expire_date: "2018-03-05", notifications_sent: 9)
Alert.create(title: "Alguien vió a Carlos Zarate?", campaign_id: 2, zone_id: 1, expire_date: "2018-04-03", notifications_sent: 3)
Alert.create(title: "El país entero busca a David Farias", campaign_id: 24, zone_id: 2, expire_date: "2018-02-03", notifications_sent: 8)
Alert.create(title: "Encontremos a Elsa Martinez", campaign_id: 26, zone_id: 1, expire_date: "2018-05-07", notifications_sent: 5)
Alert.create(title: "Donde esta Eduardo Martinez?", campaign_id: 4, zone_id: 3, expire_date: "2018-06-18", notifications_sent: 5)
Alert.create(title: "Colaboremos buscando a Miriam Lopez", campaign_id: 10, zone_id: 4, expire_date: "2018-01-30", notifications_sent: 9)
Alert.create(title: "Queremos encontrar a Oscar Sanabria", campaign_id: 7, zone_id: 4, expire_date: "2018-07-20", notifications_sent: 3)
Alert.create(title: "Buscamos a Rosa Toledo", campaign_id: 1, zone_id: 2, expire_date: "2018-03-20", notifications_sent: 5)
