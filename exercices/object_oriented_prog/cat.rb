module Walkable
  def walk
    "Let's go for a walk!"
  end
end

class Cat
  include Walkable

  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hello! My name is #{name}!"
  end
  
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
puts kitty.walk

Cat.generic_greeting