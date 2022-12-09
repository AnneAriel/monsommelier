require "open-uri"
require "nokogiri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Match.destroy_all
Wine.destroy_all
Dish.destroy_all
User.destroy_all

puts "Creating users..."
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

puts "Creating wines..."
wine1 = Wine.create!(nom:'Maison Trenel', nom_commercial: 'Trenel', appellation: 'Viré-Clessé', provenance: 'France', annee: '2021', couleur: 'blanc', quantité: "16")
photo = URI.open("https://www.oscar-lespuces.com/wp-content/uploads/2020/11/vire-clesse.jpg")
wine1.photo.attach(io: photo, filename: "profil")

wine2 = Wine.create!(nom:'Domaine Saint Jacques', appellation: 'Bourgogne aligoté', provenance: 'France', annee: '2019', couleur: 'blanc', quantité: "8")
photo = URI.open("https://res.cloudinary.com/dg3ubhfyk/image/upload/v1670425779/Domaine_St_jacques_bourgogne_qumrqo.jpg")
wine2.photo.attach(io: photo, filename: "profil")

wine3 = Wine.create!(nom:'Domaine Saint Germain', appellation: 'Bourgogne', provenance: 'France', annee: '2019', couleur: 'rouge', quantité: "5")
photo = URI.open("https://res.cloudinary.com/dg3ubhfyk/image/upload/v1670425779/image_nadrcv.png")
wine3.photo.attach(io: photo, filename: "profil")

wine4 = Wine.create!(nom:'Domaine Antoine Armanet', nom_commercial: 'Pura vida', appellation: 'Rhone', provenance: 'France', annee: '2021', couleur: 'blanc', quantité: "6")
photo = URI.open("https://res.cloudinary.com/dg3ubhfyk/image/upload/v1670425779/pura_vida_kj99kb.jpg")
wine4.photo.attach(io: photo, filename: "profil")

wine5 = Wine.create!(nom:'Domaine des coutures', appellation: 'Saint Nicolas de Bourgeuil', provenance: 'France', annee: '2020', couleur: 'rouge', cépage: 'cabernet franc')
photo = URI.open("https://res.cloudinary.com/dg3ubhfyk/image/upload/v1670425779/domaine_des_coutures_uydugm.jpg")
wine5.photo.attach(io: photo, filename: "profil")

wine6 = Wine.create!(nom: 'Domaine des marrans', appellation: 'Beaujolais', provenance: 'France', annee: '2018', couleur: 'rouge', cépage: 'gamay')
photo = URI.open("https://www.vinsbioplus.com/235/domaine-des-marrans-beaujolais-primeur-2019.jpg")
wine6.photo.attach(io: photo, filename: "profil")

wine7 = Wine.create!(nom: 'Domaine Berthoumieu', nom_commercial: 'Tanatis', provenance: 'France', annee: '2008', couleur: 'rouge', cépage: 'tanat')
photo = URI.open("https://res.cloudinary.com/dg3ubhfyk/image/upload/v1670425780/image_1_gy2gwe.png")
wine7.photo.attach(io: photo, filename: "profil")

wine8 = Wine.create!(nom: 'Xavier Vignon', appellation: 'Côte du Rhône Villages', provenance: 'France', annee: '2019', couleur: 'rouge', cépage: '75% Syrah, 10% Mourvèdre, 10% Grenache, 2% Roussanne, 3% Viognier')
photo = URI.open("https://chezstephan.wine/wp-content/uploads/2020/08/Xavier-C%C3%B4tes-du-Rh%C3%B4ne-Villages-BIO-2016_s-1.jpg")
wine8.photo.attach(io: photo, filename: "profil")

wine9 = Wine.create!(nom: 'LES CLOS DE PAULILLES', appellation: 'Collioure', provenance: 'France', annee: '2020', couleur: 'rouge', cépage: '	60% Grenache, 25% Syrah, 15% Mourvèdre')
photo = URI.open("https://auptitmarchedecampagne.fr/wp-content/uploads/2022/01/10ebe9ab-e92c-4a19-95bb-c1e5f83ee7b7-4524-0000027b90aa746e_file-scaled.jpeg")
wine9.photo.attach(io: photo, filename: "profil")

wine10 = Wine.create!(nom: 'Domaine du Bourg', appellation: 'St Nicolas de Bourgueil',  nom_commercial: 'Les graviers', provenance: 'France', annee: '2019', couleur: 'rouge', quantité: "8")
photo = URI.open("https://www.lamaisonduvin.fr/wp-content/uploads/2015/08/Domaine-du-Bourg-Saint-Nicolas-de-Bourgueil-2012.jpg")
wine10.photo.attach(io: photo, filename: "profil")

wine11 = Wine.create!(nom: 'Château de la Pierre', appellation: 'Beaujolais Village', provenance: 'France', annee: '2018', couleur: 'rouge', quantité: "6")
photo = URI.open("https://boutique.loron.fr/wp-content/uploads/2021/07/BEAUJOLAIS-VILL-CHATEAU-DE-LA-PIERRE-1.jpg")
wine11.photo.attach(io: photo, filename: "profil")

wine12 = Wine.create!(nom: 'Louis Jadot', appellation: 'Beaujolais Village', provenance: 'France', annee: '2007', couleur: 'rouge')
photo = URI.open("https://upload.wikimedia.org/wikipedia/commons/8/84/Beaujolais_villages_primeur_Louis_Jadot_2007.jpg")
wine12.photo.attach(io: photo, filename: "profil")

wine13 = Wine.create!(nom: 'Georges Duboeuf', appellation: 'Beaujolais Village', provenance: 'France', annee: '2020', couleur: 'rouge')
photo = URI.open("https://www.vipino-wein.de/media/image/43/cd/ca/georges-duboeuf-beaujolais-villages-nouveau-2022-1_300x300.jpg")
wine13.photo.attach(io: photo, filename: "profil")

puts "Creating dishes..."
dish1 = Dish.create!(nom: 'Quiche au saumon')
dish2 = Dish.create!(nom: 'Rillettes d’oie')
dish3 = Dish.create!(nom: 'Camembert')
dish4 = Dish.create!(nom: 'Tarte au chocolat')
dish5 = Dish.create!(nom: 'Toasts au chèvre chaud')
dish6 = Dish.create!(nom: 'Omelette aux champignons')
dish7 = Dish.create!(nom: 'Poulet rôti')

puts "Creating matches..."
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

puts "Creating Wine comments..."
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

puts "Creating Match comments..."
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


puts "Creating scrapped dishes..."

dishes = ["quiche+au+saumon", "camembert", "tarte+au+chocolat", "Omelette+champignon", "moules+marinieres", "fondure+savoyarde",
  "blanquette+de+veau", "choucroute", "salade+nicoise", "ratatouille", "pissaladiere", "samoussas+aux+legumes", "poulet+roti",
  "Lasagnes+au+boeuf+hache", "Sole+meuniere", "Boeuf+bourguignon", "Artichauts", "Tarte+aux+pommes", "Lapin+a+la+moutard", "Entrecote",
  "Puree+de+pommes+de+terre", "Tartiflette", "Risotto", "Raclette", "Couscous", "Hachis+Parmentier", "Roti+de+porc",
  "Soupe+de+poissons", "Aligot", "Creme+brulee", "Gratin+Dauphinois", "oignon", "Confit+de+canard", "aioli", "chapon"]


  puts "Creating scrapped wines and dishes..."
dishes.each do |dish|
  url = "http://www.quelvin.com/rechacccrus.asp?Plat=#{dish}&Tri=Coul&Ordre=ASC&Lien=0"
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search("table tr").each do |element|
    color = nil
    plat = nil
    vin = nil
    region = nil
    element.search("td").each_with_index do |column, index|
      if index == 0
        plat = column.text.strip
      elsif index == 1
        vin = column.text.strip
      elsif index == 3
        region = column.text.strip
      elsif column.text.strip == "" && !column.search("img").attribute("src").nil?
        couleur = column.search("img").attribute("src").value
        if couleur.include?("Rouge")
          color = "Rouge"
        elsif couleur.include?("Blanc")
          color = "Blanc"
        elsif couleur.include?("Rosé")
          color = "Rosé"
        end
      end
    end



    unless color.nil?
      scraped_wine = Wine.create!(
        appellation: vin,
        provenance: region,
        couleur: color,
        scraped: true
      )

      scraped_dish = Dish.create!(
        nom: plat
      )

      match = Match.create!(
      user: User.all.sample,
      wine: scraped_wine,
      dish: scraped_dish,
      scraped: true
      )
    end
  end
end
puts "Finished!"
