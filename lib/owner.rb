require "pry"


class Owner
  # code goes here
  attr_accessor 
  attr_reader :name, :species
  @@all = []
  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
  end
  def say_species
    "I am a human."
  end
  def cats
    Cat.all.select {|cat_instance| cat_instance.owner == self }
  end
  def dogs
    Dog.all.select {|dog_instance| dog_instance.owner == self}
  end
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end
  def walk_dogs
    dogs.each {|dog_instance| dog_instance.mood = "happy"}
    #Dog.all.each {|dog_instance| dog_instance.owner == self }
  end
  def feed_cats
    cats.each {|cat_inst| cat_inst.mood = "happy" }
  end

  def sell_pets
    #changes pets owner && change pet mood
    cats.each {|cat_inst| (cat_inst.mood = "nervous") && (cat_inst.owner = nil)}
    dogs.each {|dog_inst| (dog_inst.mood = "nervous") && (dog_inst.owner = nil)}
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
  def self.all
    @@all
  end

  def self.count
    @@all.count
    #self.all.count
  end

  def self.reset_all
    @@all = []
  end

end

#binding.pry