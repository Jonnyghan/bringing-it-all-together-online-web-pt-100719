require 'pry'
class Dog 
  attr_accessor :id, :name, :breed 
  
  
  def initialize(attributes)
    @name = attributes[:name]
    @breed = attributes[:breed]
    binding.pry
  end
  
  
  
  
end