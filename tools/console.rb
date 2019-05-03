require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sally= Customer.new("Sally", "Struthers")
wally= Customer.new("Wally", "Winkle")
billy= Customer.new("Billy", "Bobthorton")
sally2= Customer.new("Sally", "Smith")

pizza= Restaurant.new("Pizza Palace")
burger= Restaurant.new("Burger Barn")
hotdog= Restaurant.new("Hot Dog Hut")

sp= Review.new(sally, pizza, "Awesome Sauce", 5)
wb= Review.new(wally, burger, "Bun-delicious!", 5)
bh= Review.new(billy, hotdog, "More like barf dog!", 2)
sh= Review.new(sally, hotdog, "Yummy for my tummy!", 4)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line