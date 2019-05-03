require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
sally = Customer.new("Karen", "Harper")
harrys = Restaurant.new("Harrys")
bills = Restaurant.new("Bills")
will = Customer.new("Will", "Jones")
will2 = Customer.new("Will", "Thomas")
review1 = will.add_review(harrys, "This place is great", 5)
review2 = will.add_review(bills, "This place is okay", 3)
review3 = sally.add_review(bills, "Ughh not the best", 1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
