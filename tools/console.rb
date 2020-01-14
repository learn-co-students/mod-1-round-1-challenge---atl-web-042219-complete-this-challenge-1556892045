require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ali = Customer.new("Ali", "Smith")
adam = Customer.new("Adam", "Love")
hadi = Customer.new("Hadi", "Baker")
ali = Customer.new("Ali", "Smith")
adammm = Customer.new("Adammm", "Love")
hadiii = Customer.new("Hadiii", "Baker")

olive = Restaurant.new("Olive")
fly = Restaurant.new("Fly")
cupid = Restaurant.new("Cupid")

message1 = Review.new(ali, olive, "Awesome food!", 3)
message2 = Review.new(adam, fly, "Had better", 2)
message3 = Review.new(hadi, cupid, "Beautiful Dinning!", 4)
message4 = Review.new(ali, olive, "Awesome food-ish!", 3)
message5 = Review.new(adammm, fly, "Had better-ish", 2)
message6 = Review.new(hadiii, cupid, "Beautiful Dinning-ish!", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
