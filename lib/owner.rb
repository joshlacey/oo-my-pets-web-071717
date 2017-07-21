require 'pry'
class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end



  def buy_pet(name)
    #pet = Pet.new(name)
    #@pets[pet] << name
    #name.owner = self
  end

  def buy_fish(name)
    pet = Fish.new(name)
    @pets[:fishes] << pet
  end

  def buy_cat(name)
    pet = Cat.new(name)
    @pets[:cats] << pet
  end

  def buy_dog(name)
    pet = Dog.new(name)
    @pets[:dogs] << pet
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |pet, array|
      array.each do |subpet|
        subpet.mood = "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end



  def self.all
    @@all
  end

  def self.reset_all
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{@species}."
  end

end
