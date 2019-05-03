require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cus1 = Customer.new("jae", "park")
cus2 = Customer.new("jin", "kim")
cus3 = Customer.new("min", "lee")

res1 = Restaurant.new("deli")
res2 = Restaurant.new("coffee")
res3 = Restaurant.new("bbq")

rev1 = Review.new(cus1, res1, 3, "Goooood")
rev2 = Review.new(cus1, res3, 5, "bessst")
rev3 = Review.new(cus2, res2, 3, "bad")
rev4 = Review.new(cus3, res3, 3, "sososososososo")
rev5 = Review.new(cus3, res1, 4, "Good")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
