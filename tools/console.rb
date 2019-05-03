require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chickfila = Restaurant.new("Chick Fil A")
top_spice = Restaurant.new("Top Spice")

c1 = Customer.new("Kesha", "Lake")
c2 = Customer.new("Kayleigh", "Lake")
c3 = Customer.new("Courtney", "Lockett")
c4 = Customer.new("Stephany", "Burden")
c5 = Customer.new("Kesha", "Cole")

r1 = Review.new(chickfila, c2, 5, "Your spicy chicken sandwhiches are the best! yum!")
r2 = Review.new(top_spice, c1, 4, "The food was amazing but it's pricey!")
r3 = Review.new(chickfila, c1, 1, "Yo the location on peachtree has horrible customer service!")
r4 = c1.add_review(chickfila, "Best icecream in the fast food industry. PERIOD.", 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
