class Custom_Guitars
attr_reader :name, :rating, :summary
@@all = []

def initialize(name, rating, summary)
@name = name
@rating = rating
@summary = summary
save
end

def save
@@all << self
end

end