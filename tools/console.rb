require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

dhara = Customer.new("dhara", 'patel', "good")
krunal = Customer.new("krunal", "dave", "avarage")
kris = Customer.new("kris", "shah", "medium" )

res_1 =Restaurant.new("thai", "rev_1")
res_2 =Restaurant.new("mexican", "rev_2")
res_3 =Restaurant.new("indian", "rev_3")




rev_1 = Review.new(res_1, "dhara-patel", "good", 9)
rev_2 = Review.new(res_2, "krunal-dave", "avrage", 6)
rev_3 =Review.new(res_3, "kris-shah", "medium", 10)
binding.pry
 #leave this here to ensure binding.pry isn't the last line