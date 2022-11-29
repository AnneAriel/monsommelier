# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


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

# wine1 = Wine.new(nom_commercial: 'Trenel', nom: 'Maison Trenel', appellation: 'Viré-Clessé', année: '2021', couleur: 'blanc')
# photo = [https://produits.bienmanger.com/47120-0w0h0_Vin_Blanc_Vire_Clesse.jpg](https://produits.bienmanger.com/47120-0w0h0_Vin_Blanc_Vire_Clesse.jpg)

# wine 2 = Wine.new(exploitation = “Domaine Saint Jacques”, appellation =”Bourgogne aligoté”, année = “2019”, couleur = “blanc”)
# photo = voir dossier

# wine 3 = Wine.new(exploitation = “Domaine Saint Germain”, appellation =”Bourgogne”, année = “2019”, couleur = “rouge”) + cépage (pinot noir)

# wine 4 = Wine.new(exploitation = “Domaine Antoine Armanet”, appellation =”Rhone”, année = “2021”, couleur = “blanc”) + nom = “Pura vida”

# wine 5 = Wine.new(exploitation = “Domaine des coutures”, appellation =”Saint Nicolas de Bourgeuil”, année = “2020”, couleur = “rouge”)  + cépage : cabernet franc

# wine 6 = Wine.new(exploitation = “Domaine des marrans”, appellation =”Beaujolais”, année = “2018”, couleur = “rouge”) + cépage (gamay)

# wine 7 = Wine.new(exploitation = “Domaine Berthoumieu”, année = “2008”, couleur = “rouge”)  + cépage (Tanat) + nom : “Tanatis”
