class Owner
  # code goes here

  attr_reader :name, :species

  @@all = []

  def initialize(name, species="human")
    @name = name 
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select{|c| c.owner == self}
  end

  def dogs
    Dog.all.select{|d| d.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
    Cat.all.each { |cat| cat.mood = "happy" }
  end

  # def sell_pets
  #   Dog.all.each { |dog| dog.mood = "nervous" }
  #   Cat.all.each { |cat| cat.mood = "nervous" }
  #   self.reset_all
  # end

  # def list_pets
  # end

end