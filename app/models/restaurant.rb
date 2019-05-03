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
    array = []
    Review.all.each do |x|
      if x.restaurant == self
      array  << x.customer
    end
  end
  return array.uniq!
end

  def reviews
    Review.all.select {|x| x.restaurant == self}
  end

  def self.find_by_name(name)
    all.find {|x| x.name == name}
  end

  def average_star_rating(restaurant)
    #I know I need sum of all ratings for when restaurant == self
    #then, divide that number by count of all reviews for when restaurant == self using #reviews method
    #did not have time to work this out
    count_all_reviews = reviews.count
end
  end
    # review.rating/reviews.count.to_f

    # rating_count = 0
    # rating_average = nil
    # rating = nil
    # reviews.map do |x|
    #   rating = x.rating.to_f
    #   rating_average.to_f = rating_count += 1
    # end
    # return rating/rating_average
