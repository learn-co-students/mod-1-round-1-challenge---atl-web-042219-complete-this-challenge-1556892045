def Customer
  attr_accessor :restaurant, :content, :rating

@@all = []

def initialize(restaurant, content, rating)
  @restaurant =restaurant
  @content = content
  @rating = rating
  @@all << self
end

def self.all
@@all

end

def num_reviews
  Review.all.select{|all_reviews| all.reviews == self}.length
end

def restaurants
  Restaurant.all.select{|restaurants_reviewed| restaurants_reviewed == self}
end


def self.find_by_name(full_name)
  all.find{|customer| customer.full_name == full_name}
end


def self.find_all_by_first_name(name)
  all.find{|customer| customer.name == name}

end



end
