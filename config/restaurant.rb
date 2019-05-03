class Restaurant

  attr_accessor :customers, :reviews

  @@all = []

  def initialize(customers, reviews)
    @customers = customers
    @reviews = reviews
    @@all << self
  end

  def self.all
  @@all


  end

  def average_star_rating
    reviews.map{|review| review.star_rating}.sum to_f/reviews.length.to_f

  end

  def longest_review
  Review.all.select{|longest_review| longest_review.review == self}. length


  end

  def self.find_by_name(name)
    all.find{|first_restaurant| first_restaurant.name == name}
  end

























end
