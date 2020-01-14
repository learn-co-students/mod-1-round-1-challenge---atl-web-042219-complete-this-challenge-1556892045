class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
  a = Review.all.select do |review|
      review.customer == self
    end
    a.count
  end

  def restaurants
    a = Review.all.select do |review|
        review.customer == self
    end
    a.map do |rev|
      rev.restaurant
    end
  end

  def self.find_by_name(name)
    fullname = name.split(" ")
    first_name = fullname[0]
    last_name = fullname[1]
    @@all.find do |customer|
      customer.first_name == first_name && customer.last_name == last_name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    first = @@all.select {|x| x.first_name}
    last = @@all.select {|x| x.last_name}
    fullname = first.concat(last)
    fullname
  end

end
