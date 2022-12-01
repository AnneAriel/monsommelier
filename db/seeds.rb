# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Match.destroy_all
Wine.destroy_all
Dish.destroy_all
User.destroy_all

user1 = User.create!(username: "Cathy", email: "catherinecrozat@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045TDQ4M43-d011388c1f01-512")
user1.photo.attach(io: photo, filename: "profil")

user2 = User.create!(username: "Jean Louis", email: "jl@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045KH4RTU4-9b364aef3d01-512")
user2.photo.attach(io: photo, filename: "profil")

user3 = User.create!(username: "Nelbi", email: "nelbi@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045K5VEPU6-6f3e8bfafc04-512")
user3.photo.attach(io: photo, filename: "profil")

user4 = User.create!(username: "Anne Ariel", email: "anne_ariel@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045T6WG65S-3016efea1458-512")
user4.photo.attach(io: photo, filename: "profil")

wine1 = Wine.create!(nom:'Maison Trenel', nom_commercial: 'Trenel', appellation: 'Viré-Clessé', provenance: 'France', annee: '2021', couleur: 'blanc')
photo = URI.open("https://produits.bienmanger.com/47120-0w0h0_Vin_Blanc_Vire_Clesse.jpg")
wine1.photo.attach(io: photo, filename: "profil")

wine2 = Wine.create!(nom:'Domaine Saint Jacques', appellation: 'Bourgogne aligoté', provenance: 'France', annee: '2019', couleur: 'blanc')
photo = URI.open("app/assets/images/Domaine St jacques_bourgogne.jpeg")
wine2.photo.attach(io: photo, filename: "profil")

wine3 = Wine.create!(nom:'Domaine Saint Germain', appellation: 'Bourgogne', provenance: 'France', annee: '2019', couleur: 'rouge')
photo = URI.open("app/assets/images/domaine saint germain.jpeg")
wine3.photo.attach(io: photo, filename: "profil")

wine4 = Wine.create!(nom:'Domaine Antoine Armanet', nom_commercial: 'Pura vida', appellation: 'Rhone', provenance: 'France', annee: '2021', couleur: 'blanc')
photo = URI.open("app/assets/images/domaine saint germain.jpeg")
wine4.photo.attach(io: photo, filename: "profil")

wine5 = Wine.create!(nom:'Domaine des coutures', nom_commercial: 'Pura vida', appellation: 'Saint Nicolas de Bourgeuil', provenance: 'France', annee: '2020', couleur: 'rouge', cépage: 'cabernet franc')
photo = URI.open("app/assets/images/pura vida.jpeg")
wine5.photo.attach(io: photo, filename: "profil")

wine6 = Wine.create!(nom: 'Domaine des marrans', appellation: 'Beaujolais', provenance: 'France', annee: '2018', couleur: 'rouge', cépage: 'gamay')
photo = URI.open("app/assets/images/Domaine-des-Marrans-_-B09-Vieilles-vignes.png")
wine6.photo.attach(io: photo, filename: "profil")

wine7 = Wine.create!(nom: 'Domaine Berthoumieu', nom_commercial: 'Tanatis', provenance: 'France', annee: '2008', couleur: 'rouge', cépage: 'tanat')
photo = URI.open("app/assets/images/Domaine-des-Marrans-_-B09-Vieilles-vignes.png")
wine7.photo.attach(io: photo, filename: "profil")

dish1 = Dish.create!(nom: 'Quiche au saumon')
dish2 = Dish.create!(nom: 'Rillettes d’oie')
dish3 = Dish.create!(nom: 'camembert')
dish4 = Dish.create!(nom: 'Tarte au chocolat')
dish5 = Dish.create!(nom: 'Toasts au chèvre chaud')

match1 = Match.create!(user: user1, dish: dish5, wine: wine1)
match2 = Match.create!(user: user2, dish: dish3, wine: wine5)
match3 = Match.create!(user: user3, dish: dish3, wine: wine6)
match4 = Match.create!(user: user4, dish: dish2, wine: wine2)
match5 = Match.create!(user: user1, dish: dish1, wine: wine4)
match6 = Match.create!(user: user1, dish: dish4, wine: wine7)
