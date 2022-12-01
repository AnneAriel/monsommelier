require "open-uri"
require "nokogiri"


dishes = ["quiche+au+saumon", "camembert", "tarte+au+chocolat", "Omelette+champignon"]
#pas encore fini, il faudra iterer dessus

dish = "tarte+au+chocolat"

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

p total_match.reject{ |vin| vin[:couleur].nil? }
