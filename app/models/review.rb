class Review
    attr_accessor :content
    attr_reader :customer, :restaurant, :rating
    @@reviews = []

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        if rating.between?(1, 5)
            @rating = rating
        elsif rating > 5
            @rating = 5
        elsif rating < 1
            @rating = 1
        end
        @@reviews << self
    end

    def self.all
        @@reviews
    end

end

