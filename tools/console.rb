require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
paula = Customer.new("Paula", "Tulis")
richard = Customer.new("Richard", "Tulis")
paula1 = Customer.new("Paula", "Miller")

tds = Restaurant.new("Taqueria Del Sol")
lloyds = Restaurant.new("Lloyds")
fritti = Restaurant.new("Fritti")

review1 = Review.new(paula, lloyds, "SO GOOD", 10)
review2 = Review.new(richard, tds, "margs!", 3)
review3 = Review.new(richard, fritti, "loved it", 4)
review1 = Review.new(paula, lloyds, "SO BAD", 1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
