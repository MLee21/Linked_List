
class LinkedList 

  attr_accessor :head, :tail 

  # list is empty which means head is nil
  def empty?
    @head.nil?
  end

  # def shift
  #   node_to_return = @head
  #     if node_to_return
  #        @head = @head.next_node
  #        node_to_return.value
  #     else
  #        return nil
  #     end
  # end

  # def append(value)
  #   if empty?
  #     # list is empty
  #     # which means @head is nil
  #       @head = @tail = Node.new(value, nil)
  #   else
  #       new_node = Node.new(value, nil)
  #       @tail.next_node = new_node
  #       @tail = new_node
  #   end
  #       self
  # end

  def prepend(value)
    if empty?
      # list is empty
      # which means @head and @tail are nil
       @head = @tail = Node.new(value, nil)
    else
       new_node = Node.new(value, @head)
       @head =  new_node
    end
       self
  end

  def to_s
      pointer = @head
    while pointer != nil
      print "#{pointer.value} -> "
      pointer = pointer.next_node
    end 
      print "\n"
  end
end


class Node 

  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end

end

