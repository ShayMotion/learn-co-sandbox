class GuitarGallery::Scraper

  def self.scrape_guitars
  site = "https://www.guitarfella.com/best-electric-guitar/"

  page = Nokogiri::HTML(open(site))
  results = page.css(".best_lists_table tr")


  results.drop(1).each do |r|
  #puts r
  name = r.css('.table_product_name a').text.strip
  rating = r.css('td:nth-child(2) p').text.strip
  summary = r.css('td:nth-child(3) p').text.strip
  guitar = Custom_Guitars.new(name, rating, summary)
  puts guitar.name
  puts guitar.rating
  puts summary
    end
  end
  
end  
 



"Finished running code"