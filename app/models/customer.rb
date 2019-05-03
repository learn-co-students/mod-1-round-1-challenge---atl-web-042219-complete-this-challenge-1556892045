class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_reviews(restaurant, content, rating)
    
  end

  def num_reviews(#customer's name)
    #query the review field and search for each instance the 
    #customer name === review author's.name, count each of these
    #return it 
     self.count
  end

  def restaurant(#customer's name)
#query the review field and search for each instance the 
    #customer name ===  author's.name, map  each of these
    #return it the new array 
  end

end
