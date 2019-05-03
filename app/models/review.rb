class Review
    @@all = []

    attr_accessor :restaurant, :customer, :content, :rating

    def initialize(restaurant, customer, content, rating) 
        @restaurant = restaurant
        @customer = customer
        @content = content
        @rating = rating
        @@all << self
    end

    def self.all 
        @@all 
    end

end

