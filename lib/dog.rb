require 'pry'
class Dog 
  attr_accessor :id, :name, :breed 
  
  
  def initialize(attributes)
    @name = attributes[:name]
    @breed = attributes[:breed]
    #binding.pry
  end
  
  def self.create_table
    DB[:conn].execute("CREATE TABLE IF NOT EXISTS dogs(
      id PRIMARY KEY INTEGER,
      name TEXT,
      breed TEXT")
  end
  
  
end