class Review
  attr_reader :author, :customer, :restaurant
  attr_accessor :rating, :content

  @@reviews = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@reviews << self
  end

  def self.all
    @@reviews
  end

end
