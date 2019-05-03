require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tun = Customer.new("Tun", "Khine")
brit = Customer.new("Brit", "Butler")
tez = Customer.new("Tez", "Smith")

hummus = Restaurant.new("Hummus House")
steak = Restaurant.new("Steak House")
vegan = Restaurant.new("Vegan House")

tun = Review.new(tun, hummus, "awesome", 5)
brit = Review.new(brit, vegan, "meh", 2)
tez = Review.new(tez, steak, "The best", 10)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
