xml.instruct! :xml, :version=>"1.0" 
xml.containers{  
  xml.container do
    hierarchy = @locations.head.container
    binding.pry
    hierarchy.each_pair{ |column_name,column_value|
      column_value = format_column(column_value)
      xml.tag!(column_name, column_value)
    }
     
  end
}
