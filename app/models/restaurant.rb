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

  def reviews #this 1 first
    Review.all.select{|review|review.restaurant == self}
  end

  def customers
      reviews.map{|review|review.customer}
  end

  def average_star_rating
        averageStarRating = 0  
     reviews.each do |review|
        averageStarRating += review.rating
     end
        averageStarRating.to_f/reviews.length
  end

  def longest_review
      review_length = 0
      review_length_content = ""
      reviews.each do |review|
        if review.content.length > review_length
          review_length = review.content.length
          review_length_content = review.content 
        end
      end
      review_length_content
  end

  def self.find_by_name(restaurant_name)
    #given a string of restaurant name, returns the first restaurant that matches
    Restaurant.all.find do |eatery|
        eatery.name == restaurant_name
    end
  end 


  

end
