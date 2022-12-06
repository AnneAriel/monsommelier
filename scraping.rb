require "open-uri"
require "nokogiri"


dishes = ["quiche+au+saumon", "camembert", "tarte+au+chocolat", "Omelette+champignon", "moules+marinieres", "fondure+savoyarde",
  "blanquette+de+veau", "choucroute", "salade+nicoise", "ratatouille", "pissaladiere", "samoussas+aux+legumes", "poulet+roti",
  "Lasagnes+au+boeuf+hache", "Sole+meuniere", "Boeuf+bourguignon", "Artichauts", "Tarte+aux+pommes", "Lapin+a+la+moutard", "Entrecote",
  "Puree+de+pommes+de+terre", "Poulet+basquaise", "Tartiflette", "Risotto", "Raclette", "Couscous", "Hachis+Parmentier", "Roti+de+porc",
  "Soupe+de+poissons", "Aligot", "Creme+brulee", "Gratin+Dauphinois", "oignon", "Confit+de+canard", "aioli", "chapon"]

  p dishes.count

dishes.each do |dish|
  url = "http://www.quelvin.com/rechacccrus.asp?Plat=#{dish}&Tri=Coul&Ordre=ASC&Lien=0"
  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML(html_file)

  total_match = html_doc.search("table tr").map do |element|
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
    match = {
      dish: plat,
      appellation: vin,
      couleur: color,
      provenance: region
    }
  end
  total_match.reject{ |vin| vin[:couleur].nil? }
end


# url = "https://www.marciatack.fr/recettes-emblematiques-francaises/"
# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)


# search_dishes = html_doc.search(".wprm-recipe-name").map do |element|
#   element.text.strip
# end

# final_search = search_dishes.map do |search_dish|
#   search_dish.downcase.gsub(/[[:space:]]/,'+')
# end
