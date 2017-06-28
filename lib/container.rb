require 'singleton'

class Container
  attr_accessor :capacity, :row,:column ,:level
  LEVELS = [0,1,2,3,4]
  COLUMNS = 5
  ROWS = 10
  CAPACITY = ROWS * COLUMNS * LEVELS.size
  

  @@levels = 0
  @@rows = 0
  @@columns = 0
  @@capacity = CAPACITY

   
  def self.container
    @container = Container.new
  end

  def self.levels=(new_level)
    @@levels = new_level
  end

  def self.levels
    @@levels
  end

  def self.rows=(new_rows)
    @@rows = new_rows
  end

  def self.rows
    @@rows
  end

  def self.columns=(new_columns)
    @@columns = new_columns
  end

  def self.columns
    @@columns
  end
  
  def increment_columns
    @@columns =  @@columns + 1
  end
  
  def increment_rows
    @@rows = @@rows + 1
  end
  
  def increment_level
    @@levels = @@levels + 1
  end
  
  def reset
    @@levels = 0
    @@rows = 0
    @@columns = 0
    @@capacity = CAPACITY 
  end
  
  def assign_container_location
    self.row = @@rows
    self.column = @@columns
    self.level = @@levels
    
    if @@capacity == 0
      @@capacity = CAPACITY
      raise  "Size limit exceeds"         
    end
    @@capacity = @@capacity - 1
    
    if @@rows < 9 && @@columns < 4             
      increment_columns
    elsif @@rows == 9 && @@columns == 4
      increment_level
      @@columns = 0
      @@rows = 0
    elsif @@columns == 4 && @@rows != 9
      @@columns = 0
      increment_rows        
    end 
  end
end