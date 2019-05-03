class Review
    attr_accessor :content, :rating 
    attr_reader :restaurant, :customer

    @@review = []

    def initialize(restaurant, content, rating, customer)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @customer = customer
        @@review << self
    end

    def self.all
        @@review
    end

    # def customer(review)
    #     Review.all.find { |x| x.review == review }
    # end
  
end

