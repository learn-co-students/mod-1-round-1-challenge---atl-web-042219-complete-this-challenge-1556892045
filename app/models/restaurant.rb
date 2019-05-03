require 'pry'

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

  def customers
    customers = []
    Review.all.each do |review|
      customers << review.customer if review.restaurant == self
    end
    customers.uniq!
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    total = Review.all.select {|review| review.restaurant == self}.sum {|review| review.rating}
    average = total.to_f / reviews.length.to_f
    average.round(1)
  end

  def longest_review
    self.reviews.each.sort_by  {|review| review.content.split(" ").length}.last.content
  end

  def self.find_by_name(name)
    all.find {|restaurant| restaurant.name == name}
  end

end
#COMPLETE
