class ContainerCrud

  def self.allocate(containers)
    begin
      result = 'SUCCESS'
      locations = List::LinkedList.new
      containers.each{|port,number|      
        number.to_i.times do
          locations.add(port)        
        end
      }
      locations.reset_containers 
      return locations , result
    rescue Exception => ex      
      locations.reset_containers 
      return {"error"=> ex.to_s} , 'ERROR'
    end
  end
  
end