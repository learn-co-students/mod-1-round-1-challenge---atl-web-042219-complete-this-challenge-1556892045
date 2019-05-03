class Restaurant
  attr_reader :name

  @@restaurants = []

  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    @@restaurants
  end

  def customers
    Review.all.select {|x| x.restaurant == self}
  end

  def reviews
    self.customers.map {|x| x.content}
  end

  def average_star_rating
    array = self.customers.map { |x| x.rating }
    array.inject{ |sum, el| sum + el }.to_f / array.size
  end

  def longest_review
    self.reviews.map {|x| x.length}.max
  end
end
