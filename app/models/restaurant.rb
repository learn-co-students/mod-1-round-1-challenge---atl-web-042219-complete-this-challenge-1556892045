class Restaurant
  attr_reader :name
  @@all_rest = []

  def initialize(name)
    @name = name
    @@all_rest << self
  end

  def self.all
    @@all_rest
  end

  def customers
    list = Review.all.select {|all_cust| all_cust.customer}
    "1.customer: #{list[0]}"
  end

  def reviews
    Review.all.select {|rest_rev| rest_rev.restaurant == self}
  end

  # def average_star_rating
  #   a = reviews.select {|star| star.rating == self}
  #   num = a.count
  #   # num / all_
  # end

  def self.find_by_name(name)
    @@all_rest.find {|one_rest| one_rest.name == name}
  end

  # def longest_review
  #   Review.all.find {|longg| longg.content}.length.max
  # end
end
