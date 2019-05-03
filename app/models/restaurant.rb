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
    restaurants_customers = []
    Review.all.each do |review_obj|
      if review_obj.restaurant == self
        restaurants_customers << review_obj.user
      end
    end
    restaurants_customers.uniq
  end



  # def reviews
  #   Review.all.select do |review_obj|
  #     review_obj.restaurant == self
  #   end
  # end

  #working

  def average_star_rating
    avg_stars = []
    Review.all.each do |review_obj|
      if review_obj.restaurant == self
        avg_stars << review_obj.rating
      end
    end
    avg_stars.sum/avg_stars.size
  end

  #working ^

  # def longest_review
  # Review.all.max_by {|review_obj| review_obj.content.length }
  # end
   #stack level too deep

  def self.find_by_name(name)
    self.all.find do |restaurant_obj|
      restaurant_obj.name == name
    end
  end

  #works ^

end
