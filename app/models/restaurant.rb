class Restaurant
  attr_reader :name
  attr_accessor :rating, :content

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    Review.all.select { |review| review.customer if review.restaurant == self}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
  end

  def longest_review
    Review.all.find { |review| review.content}
  end
end
