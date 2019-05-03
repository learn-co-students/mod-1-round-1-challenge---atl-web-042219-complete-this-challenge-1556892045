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
    my_cus = Review.all.select {|rev| rev.restaurant == self}
    my_cus.map {|rev| rev.customer}.uniq
  end

  def reviews
    Review.all.select {|rev| rev.restaurant==self}
  end

  # def average_star_rating
  #   my_rev = Review.all.select {|rev| rev.restaurant == self}
  #   my_rev.map {}
  # end


end
