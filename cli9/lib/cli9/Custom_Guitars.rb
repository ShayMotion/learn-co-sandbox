class Custom_Guitars::Guitar
  attr_reader :name, :rating, :summary
  @@all = []

  def initialize(name, rating, summary)
    @name = name
    @rating = rating
    @summary = summary
    @guitars = []
  save
  end

  def self.all
    Custom_Guitars::Scraper.scrape_guitars if @@all.empty?
     @@all
    end
    
def get_guitars  
  
  def save
    @@all << self
    end

end

