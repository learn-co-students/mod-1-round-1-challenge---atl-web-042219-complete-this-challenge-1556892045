require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ali = Customer.new("Ali", "Smith")
adam = Customer.new("Adam", "Love")
hadi = Customer.new("Hadi", "Baker")

olive = Restaurant.new("Olive")
fly = Restaurant.new("Fly")
cupid = Restaurant.new("Cupid")

message1 = Review.new(ali, olive, "Awesome food!", 3)
message2 = Review.new(adam, fly, "Had better", 2)
message3 = Review.new(hadi, cupid, "Beautiful Dinning!", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
