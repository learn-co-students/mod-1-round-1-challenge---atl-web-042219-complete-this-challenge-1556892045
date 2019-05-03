class Review
  
    attr_accessor :name, :restaurant, :content
    @@all = []

    def initialize(name)
        @name = name
        @content = content
        @rating = 0 #input as a number
        @@all << self
    end

    def self 
        @@all.self
    end

end

