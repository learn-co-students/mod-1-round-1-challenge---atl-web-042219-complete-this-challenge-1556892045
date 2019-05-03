class Restaurant
  attr_reader :name,  :review 

  @@all = []

  def initialize(name,  review)
    @name = name
  
    @review = review
    @@all << self
  end

  def self.all 
    @@all 
  end

  def customers
    Review.all.select { |inst| inst.resturant == self }
  end

  def reviews
    Review.all.select { |inst| inst.review ==sellf}
  end

end
