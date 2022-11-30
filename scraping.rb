require "open-uri"
require "nokogiri"

ingredient = "chocolate"
pizza = "pizza"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"
url2 = "http://www.quelvin.com/rechacccrus.asp?Plat=pizza&C=+Plat%2ENomSA+like+%27%25pizza%25%27&Lien=0&Tri=&Ordre="
html_file = URI.open(url2).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search("table tr").each do |element|
  element.search("td").each do |column|
    p column.text.strip
    if column.text.strip == "" && !column.search("img").attribute("src").nil?
      couleur = column.search("img").attribute("src").value
      if couleur.include?("Rouge")
        p "Rouge"
      elsif couleur.include?("Blanc")
        p "Blanc"
      elsif couleur.include?("Rosé")
        p "Rosé"
      end
    end
  end
end
