class Review
    attr_reader :customer, :restaurant
    attr_accessor :rating, :content
    
    @@all = []

    def self.all
        @@all
    end
    
    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end


end

