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

  def sell_pets
    Dog.all.each do |dogs|
      dogs.mood = "nervous"
      dogs.owner = nil
    end
    Cat.all.each do |cats|
      cats.mood = "nervous"
      cats.owner = nil
    end
    Owner.reset_all
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


  #eefuiefufebuef
  #eefuiefufebuef
  #eefuiefufebuef
  #eefuiefufebuef

end