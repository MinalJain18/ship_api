class ContainerCrud

  def self.allocate(containers)
    begin
      locations = List::LinkedList.new
      containers.each{|port,number|      
        number.to_i.times do
          locations.add(port)        
        end
      }
      locations.reset_containers 
      locations
    rescue Exception => ex      
      return {"error"=> ex.to_s}     
    end
  end
  
end