require 'pry'
class Dog 
  attr_accessor :id, :name, :breed 
  
  
  def initialize(attributes)
    @name = attributes[:name]
    @breed = attributes[:breed]
    #binding.pry
  end
  
  def self.create_table
    sql = <<-SQL 
      CREATE TABLE IF NOT EXISTS dogs(
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT
      )
      SQL
       DB[:conn].execute(sql) 
  end
  
  def self.drop_table
    sql= <<-SQL
    DROP TABLE dogs
    SQL
  end  
  
end