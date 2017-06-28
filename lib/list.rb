module List
	class Node
		attr_accessor :value, :next, :container

		def initialize (value,next_node=nil,container)
			@value = value
			@next = next_node
			@container = container
		end

	end

  class LinkedList
    attr_accessor :head

    def initialize (value=nil)
      @container = Container.new
      if value==nil
        @head = nil
      else
       
        @container.assign_container_location
        @head = Node.new(value,@head,@container)
      end
    end
   

    public
    
    def add(value)
      container = Container.new
      container.assign_container_location
      new_node = Node.new(value,@head,container)
      @head = new_node
    end
    
    def reset_containers
      @container.reset
    end

    # To check whether the linked list has the particular value or not
    def has?(value)
      node = @head
      while node!=nil and node.value!=value do
        node = node.next
      end
      if node!=nil and node.value == value
        return true
      else
        return false
      end
    end


    # To return the linked list elements in a printable format  array like string
		def to_s
      arr ="["
      node = @head
      while (node!=nil) do
        arr << node.value.to_s + '{' +  node.container.row.to_s + ',' +  node.container.column.to_s + ','+  node.container.level.to_s + '}' << ","
        node = node.next
      end
      arr[arr.length-1] = "]"
      return arr
    end


  end

end