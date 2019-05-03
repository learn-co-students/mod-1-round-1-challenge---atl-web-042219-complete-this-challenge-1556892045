class Review

  attr_reader :customer, :restaurant, :content, :rating

    @@all = []

    def initialize(customer, restaurant, content, rating)
      @customer = customer
      @restaurant = restaurant
      @content = content
      @rating = rating
      @@all << self
    end

    def self.all
      @@all
    end

    def customer
      Customer.all.select { |cust| cust.review }
    end

    def restaurant
      
    end

    def rating
    end

    def content
    end

end
