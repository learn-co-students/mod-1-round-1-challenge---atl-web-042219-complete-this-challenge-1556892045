require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
evan = Customer.new('evan', 'kim')
brian = Customer.new('brian', 'cho')
jae = Customer.new('jae', 'park')


ironage = Restaurant.new('Iron Age')
pokebar = Restaurant.new('Poke Bar')

rev1 = Review.new(evan, ironage, 'quality' , 4)
rev2 = Review.new(evan, pokebar, 'quality', 5)
rev3 = Review.new(brian, ironage, 'taste', 4)
rev4 = Review.new(jae, ironage, 'taste', 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
