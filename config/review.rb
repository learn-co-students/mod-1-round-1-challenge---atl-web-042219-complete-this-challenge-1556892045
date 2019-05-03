class Review
  attr_accessor :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
  @@all

  end


  def rating
  Restaurant.all.select{|star_rating| star_rating == self }.1-5


  end
  def content
  all.find {|all_content| all_content.content == content}


  end



















end
