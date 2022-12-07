# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Wine.destroy_all
Dish.destroy_all
Match.destroy_all
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

wine1 = Wine.create!(nom:'Maison Trenel', nom_commercial: 'Trenel', appellation: 'Viré-Clessé', provenance: 'France', annee: '2021', couleur: 'blanc', quantité: "16")
photo = URI.open("https://www.vinademi.com/528-special_default/saint-veran-blanc-2018.jpg")
wine1.photo.attach(io: photo, filename: "profil")

wine2 = Wine.create!(nom:'Domaine Saint Jacques', appellation: 'Bourgogne aligoté', provenance: 'France', annee: '2019', couleur: 'blanc', quantité: "8")
photo = URI.open("https://cdn.shopify.com/s/files/1/0076/3032/3801/products/DSC_1077_clipped_rev_1_1_1024x1024.png?v=1662128864")
wine2.photo.attach(io: photo, filename: "profil")

wine3 = Wine.create!(nom:'Domaine Saint Germain', appellation: 'Bourgogne', provenance: 'France', annee: '2019', couleur: 'rouge', quantité: "5")
photo = URI.open("https://courses.monoprix.fr/images-v3/0c44253f-c4a3-4340-9d37-d41e42b9d14a/aa85f4a3-6e39-4aa8-9f23-15a4bbf784b6/500x500.jpg")
wine3.photo.attach(io: photo, filename: "profil")

wine4 = Wine.create!(nom:'Domaine Antoine Armanet', nom_commercial: 'Pura vida', appellation: 'Rhone', provenance: 'France', annee: '2021', couleur: 'blanc', quantité: "6")
photo = URI.open("https://www.antoine-armanet.com/wp-content/uploads/2022/03/vin-armanet-Pura-Vida-rouge-1024x1024.png")
wine4.photo.attach(io: photo, filename: "profil")

wine5 = Wine.create!(nom:'Domaine des coutures', appellation: 'Saint Nicolas de Bourgeuil', provenance: 'France', annee: '2020', couleur: 'rouge', cépage: 'cabernet franc')
photo = URI.open("https://www.vinatis.com/64772-detail_default/les-coutures-2018-frederic-mabileau.png")
wine5.photo.attach(io: photo, filename: "profil")

wine6 = Wine.create!(nom: 'Domaine des marrans', appellation: 'Beaujolais', provenance: 'France', annee: '2018', couleur: 'rouge', cépage: 'gamay')
photo = URI.open("https://www.vinatis.com/72641-detail_default/morgon-corcelette-2021-domaine-des-marrans.png")
wine6.photo.attach(io: photo, filename: "profil")

wine7 = Wine.create!(nom: 'Domaine Berthoumieu', nom_commercial: 'Tanatis', provenance: 'France', annee: '2008', couleur: 'rouge', cépage: 'tanat')
photo = URI.open("https://images.vivino.com/thumbs/q3LzsfAkR1C17mLtts_m0A_pb_600x600.png")
wine7.photo.attach(io: photo, filename: "profil")

wine8 = Wine.create!(nom: 'Xavier Vignon', appellation: 'Côte du Rhône Villages', provenance: 'France', annee: '2019', couleur: 'rouge', cépage: '75% Syrah, 10% Mourvèdre, 10% Grenache, 2% Roussanne, 3% Viognier')
photo = URI.open("https://www.vinatis.com/59365-detail_default/cotes-du-rhone-villages-bio-2019-xavier-vignon.png")
wine8.photo.attach(io: photo, filename: "profil")

wine9 = Wine.create!(nom: 'LES CLOS DE PAULILLES', appellation: 'Collioure', provenance: 'France', annee: '2020', couleur: 'rouge', cépage: '	60% Grenache, 25% Syrah, 15% Mourvèdre')
photo = URI.open("https://www.vinatis.com/64459-detail_default/collioure-rouge-2020-les-clos-de-paulilles.png")
wine9.photo.attach(io: photo, filename: "profil")

wine10 = Wine.create!(nom: 'Domaine du Bourg', appellation: 'St Nicolas de Bourgueil',  nom_commercial: 'Les graviers', provenance: 'France', annee: '2019', couleur: 'rouge', quantité: "8")
photo = URI.open("https://optimuswine.com/1913-medium_default/domaine-du-bourg-les-graviers-saint-nicolas-de-bourgueil-rouge-2019-75cl.jpg")
wine10.photo.attach(io: photo, filename: "profil")

wine11 = Wine.create!(nom: 'Château de la Pierre', appellation: 'Beaujolais Village', provenance: 'France', annee: '2018', couleur: 'rouge', quantité: "6")
photo = URI.open("https://www.martigny.vin/medias/images/sans-titre-2-copie-14.png?fx=c_300_300")
wine11.photo.attach(io: photo, filename: "profil")

wine12 = Wine.create!(nom: 'Vignerons de Bel air', appellation: 'Beaujolais Village', provenance: 'France', annee: '2020', couleur: 'rouge')
photo = URI.open("https://www.vinatis.com/52908-detail_default/beaujolais-villages-2020-vignerons-de-bel-air.png")
wine12.photo.attach(io: photo, filename: "profil")

wine13 = Wine.create!(nom: 'Georges Duboeuf', appellation: 'Beaujolais Village', provenance: 'France', annee: '2020', couleur: 'rouge')
photo = URI.open("https://www.centraleboissons.com/22518-large_default/aoc-beaujolais-village-georges-du-boeuf-rouge-75cl.jpg")
wine13.photo.attach(io: photo, filename: "profil")

dish1 = Dish.create!(nom: 'Quiche au saumon')
dish2 = Dish.create!(nom: 'Rillettes d’oie')
dish3 = Dish.create!(nom: 'Camembert')
dish4 = Dish.create!(nom: 'Tarte au chocolat')
dish5 = Dish.create!(nom: 'Toasts au chèvre chaud')
dish6 = Dish.create!(nom: 'Omelette aux champignons')
dish7 = Dish.create!(nom: 'Poulet rôti')

match1 = Match.create!(user: user1, dish: dish5, wine: wine1)
match2 = Match.create!(user: user2, dish: dish3, wine: wine5)
match3 = Match.create!(user: user3, dish: dish3, wine: wine6)
match4 = Match.create!(user: user4, dish: dish2, wine: wine2)
match5 = Match.create!(user: user1, dish: dish1, wine: wine4)
match6 = Match.create!(user: user1, dish: dish4, wine: wine7)
match7 = Match.create!(user: user2, dish: dish6, wine: wine8)
match8 = Match.create!(user: user3, dish: dish6, wine: wine9)
match9 = Match.create!(user: user2, dish: dish7, wine: wine10)
match10 = Match.create!(user: user1, dish: dish7, wine: wine11)
match11 = Match.create!(user: user1, dish: dish7, wine: wine12)
match12 = Match.create!(user: user1, dish: dish7, wine: wine13)

winecomment1 = Comment.create!(commentaire: "Délicieux & fruité", note: "4", user: user2, commented_on: wine1)
winecomment2 = Comment.create!(commentaire: "Pas terrible", note: "2", user: user1, commented_on: wine2)
winecomment3 = Comment.create!(commentaire: "Correct", note: "3", user: user3, commented_on: wine3)
winecomment4 = Comment.create!(commentaire: "Exceptionnel", note: "5", user: user4, commented_on: wine4)
winecomment5 = Comment.create!(commentaire: "Bons arômes, léger", note: "4", user: user2, commented_on: wine5)
winecomment6 = Comment.create!(commentaire: "Bon mais pas incroyable", note: "2", user: user1, commented_on: wine6)
winecomment7 = Comment.create!(commentaire: "Incroyable", note: "5", user: user3, commented_on: wine7)
winecomment8 = Comment.create!(commentaire: "Agréable et fruité", note: "4", user: user3, commented_on: wine10)
winecomment9 = Comment.create!(commentaire: "Frais sur le fruit", note: "5", user: user4, commented_on: wine10)
winecomment10 = Comment.create!(commentaire: "Très fruité", note: "4", user: user1, commented_on: wine11)
winecomment11 = Comment.create!(commentaire: "Trop de tanins", note: "2", user: user2, commented_on: wine11)
winecomment12 = Comment.create!(commentaire: "OK", note: "4", user: user2, commented_on: wine12)
winecomment13 = Comment.create!(commentaire: "Moyen", note: "2", user: user3, commented_on: wine12)
winecomment14 = Comment.create!(commentaire: "Pas top", note: "2", user: user2, commented_on: wine13)
winecomment15 = Comment.create!(commentaire: "Trop de tanins", note: "1", user: user3, commented_on: wine13)

matchcomment1 = Comment.create!(commentaire: "Incroyable", note: "5", user: user3, commented_on: match1)
matchcomment2 = Comment.create!(commentaire: "Pas terrible", note: "2", user: user1, commented_on: match2)
matchcomment3 = Comment.create!(commentaire: "Accord correct", note: "3", user: user3, commented_on: match3)
matchcomment4 = Comment.create!(commentaire: "Exceptionnel", note: "5", user: user4, commented_on: match4)
matchcomment5 = Comment.create!(commentaire: "Exceptionnel", note: "5", user: user2, commented_on: match5)
matchcomment6 = Comment.create!(commentaire: "Bon mais pas incroyable", note: "2", user: user1, commented_on: match6)
matchcomment7 = Comment.create!(commentaire: "Bon mais pas incroyable", note: "2", user: user1, commented_on: match7)
matchcomment8 = Comment.create!(commentaire: "Accord correct", note: "3", user: user2, commented_on: match7)
matchcomment9 = Comment.create!(commentaire: "Agréable", note: "3", user: user3, commented_on: match8)
matchcomment10 = Comment.create!(commentaire: "Exceptionnel", note: "5", user: user4, commented_on: match8)
matchcomment11 = Comment.create!(commentaire: "Accord parfait", note: "5", user: user1, commented_on: match9)
matchcomment12 = Comment.create!(commentaire: "Très agréable pour un bon déjeuner du dimanche", note: "4", user: user2, commented_on: match9)
matchcomment13 = Comment.create!(commentaire: "Belle balance des arômes", note: "4", user: user3, commented_on: match9)
matchcomment14 = Comment.create!(commentaire: "Délicieux", note: "5", user: user3, commented_on: match9)
matchcomment15 = Comment.create!(commentaire: "Le vin a pris le pas sur le goût du poulet", note: "2", user: user1, commented_on: match10)
matchcomment16 = Comment.create!(commentaire: "Aucun interêt", note: "1", user: user2, commented_on: match10)
matchcomment17 = Comment.create!(commentaire: "Très déçue par cet accord", note: "2", user: user1, commented_on: match10)
matchcomment18 = Comment.create!(commentaire: "Correct", note: "3", user: user4, commented_on: match10)
