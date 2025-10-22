# lib/scraper.rb
require 'open-uri'
require 'nokogiri'

def fetch_clothes_names
  # L'URL est visible dans l'inspecteur d'éléments de votre capture d'écran
  url = "https://games4esl.com/list-of-clothes/"
  
  begin
    html_content = URI.parse(url).read
  rescue OpenURI::HTTPError => e
    puts "Erreur lors de l'accès à l'URL : #{e.message}"
    return []
  end
  
  doc = Nokogiri::HTML.parse(html_content)

  clothes_names = []
  
  # Utiliser le sélecteur CSS pour trouver chaque nom de vêtement
  # .wp-block-list : cible l'élément <ul> avec la classe "wp-block-list"
  # li : cible chaque élément <li> à l'intérieur de cet <ul>
  doc.search('.wp-block-list li').each do |element|
    clothes_names << element.text.strip
  end

  return clothes_names
end

# --- Exécution ---
list = fetch_clothes_names

if list.any?
  puts "Liste des vêtements scrapée :"
  puts list
else
  puts "Aucun vêtement n'a été trouvé."
end