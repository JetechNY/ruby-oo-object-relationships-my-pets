require "./lib/cat.rb"
require "./lib/dog.rb"
require "./lib/owner.rb"
require "pry"


matt = Owner.new("Matt")

matt.buy_cat("slouchy")
matt.buy_cat("Fido")
matt.buy_dog("Charley")

cat_1 = Cat.new("Garfield")
cat_2 = Cat.new("Fido")
cat_3 = Cat.new("Whiskers")

dog_1 = Dog.new("Fido")
dog_2 = Dog.new("Snuffles")
dog_3 = Dog.new("Charley")

binding.pry