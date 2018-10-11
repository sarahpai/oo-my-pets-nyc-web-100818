class Owner
  attr_accessor :name, :pets
  attr_reader :species
  attr_writer

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
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

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
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
    @pets[:fishes].each do |fishy|
      fishy.mood = "happy"
    end
  end

  def sell_pets
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:fishes].each do |fishy|
      fishy.mood = "nervous"
    end
    @pets[:dogs].clear
    @pets[:cats].clear
    @pets[:fishes].clear
  end

  def list_pets
    doggos = @pets[:dogs].count
    kitties = @pets[:cats].count
    deep_sea_beasts = @pets[:fishes].count
    "I have #{deep_sea_beasts} fish, #{doggos} dog(s), and #{kitties} cat(s)."
  end

end
