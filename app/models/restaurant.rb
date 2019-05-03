class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all
  end 

  def reviews
    Review.all.select { |rev| rev.restaurant == self }
  end 

  def customers
    #self.reviews.collect { |rev| rev.customer }
    customer_reviews = Review.all.select { |rev| rev.restaurant == self } 
    customer_reviews.map { |rev| rev.customers } 
    
  end 

  def self.find_by_name(name)
    @@all.find { |rev| rev.name == name }
  end 

end
