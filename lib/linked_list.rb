class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(next_node_data)
#Create a new node with the input string - list.append('Rhodes')
    # new_node = Node.new(next_node_data)
# Check if the linked list is empty
    ## This new version of append employs the set_head method and set_tail methods we've defined below  

    if empty?
      set_head(next_node_data)
    else
      set_tail(next_node_data)
    end
    ### another way to do this is... 
    # def append(surname)
    #  empty? ? set_head(surname) : set_tail(surname)
    # end
    ## If empty? ? yes = set head, no = set tail?
    ## I don't quite understand what this is saying yet though

    ## previous iteration
    # if empty?
    #   self.head = new_node(next_node_data)
    # else
    #   last_node(head).next_node = new_node(next_node_data)
    # end
    next_node_data
  end

  def set_head(set_head_data)
    self.head = new_node(set_head_data) #this is going to set the head using the new_node method
  end

  def set_tail(set_tail_data)
    last_node(head).next_node = new_node(set_tail_data) #this will set the last node using the head data and then set the next node to be a new node using the new node method and the set_tail_data provided
  end
  
  def last_node(last_node_data)
    return last_node_data if (last_node_data).tail?
    last_node(last_node_data.next_node)
  end

  def new_node(new_node_data)
    Node.new(new_node_data)
  end

  def count_node(node, counter)
    return counter if node.tail? 
    # return the counter if the node is the tail using the tail method
    count_node(node.next_node, counter += 1)
    # use the count_node method on all nodes.next_nodes to add one to the counter
  end

  def count
    return 0 if empty?
    # return 0 if the empty method is true
    count_node(head, 1)
    # this will use the count_node method we've created using the head as the parameter and setting the counter to one, which will then get one added to the counter every time there is a node.next_node

    ## Previous version to pass the first tests - this only works for one node in a list since there are only two conditions.
    # if head.nil? # if the head of the list is 0, then...
    #   0
    # else #otherwise...
    #   1
    # end
  end

  def to_string
    return "" if empty?
    # this will return a blank string if the empty method returns true
    return head.data if head.tail?
    # this will return the head data if the head is the tail, checked using the tail? method which will return true if the head is the tail
    # return "#{head.data} #{head.next_node.data}" if self.count == 2
    string_nodes_together(head.data, head.next_node.data)

    ## Iteration one could only take the data from the head to pass the initial tests
    # "#{@head.data}"
  end

  # def string_starter
  #   "#{head.data}"
  # end

  def string_nodes_together(node_x, node_x_plus_1)
    return concat(node_x, node_x_plus_1)
    string_nodes_together(head, concat(node_x, node_x_plus_1))
  end



  def concat(node_x, node_x_plus_1)
    "#{node_x} #{node_x_plus_1}"
    #this method will put together a node and the node after it
  end


  def empty?
    head.nil?
    ## Previous Iteration
    # if head != nil # this could be shortened to head.nil? which would ask the question "Is the head nothing?" to which the answer could only be true/false
    #   false
    # else
    #   true
    # end
  end
end

