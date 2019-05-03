require_relative '../config/environment.rb'
require_relative '../lib/customer'
require_relative '../lib/restaurant'
require_relative '../lib/review'

def reload
  load 'config/environment.rb'
end


chris= Customer.new{"Chris"}
blake= Customer.new("Blake")
tiffani= Customer.new("Tiffani")


grille= Restaurant.new("grille ")
rasika= Restaruant.new("rasika")
longhorn= Restaurant.new("longhorn")





# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
