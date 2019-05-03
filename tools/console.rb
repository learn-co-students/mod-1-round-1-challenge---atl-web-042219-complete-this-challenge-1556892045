require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

preston = Customer.new("Preston", "Elliott")
anne = Customer.new("Anne", "Elliott")

fidos = Restaurant.new("Fidos Irish Pub")
grindhouse = Restaurant.new("Grindhouse Burgers")

review_one = Review.new(fidos, "Loved the lamb stew", 5, preston)
review_two = Review.new(fidos, "Pretty decent", 3, anne)
review_three = Review.new(grindhouse, "Not great", 2, preston)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line