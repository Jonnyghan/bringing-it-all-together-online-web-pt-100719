require 'pry'
class Dog 
  attr_accessor :id, :name, :breed 
  
  
  def initialize(attributes)
    attributes[:name]= @name
    attributes[:breed]= @breed
    @id = id
    binding.pry
  end
  
  
  
  
end