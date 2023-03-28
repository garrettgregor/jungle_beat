class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(next_node_data)
    #### This new version of append employs the set_head method and set_tail methods we've defined below  
    if empty?
      set_head(next_node_data)
    else
      set_tail(next_node_data)
    end
    next_node_data
    
    #### another way to do this is... 
    ## def append(surname)
    ##  empty? ? set_head(surname) : set_tail(surname)
    ## end
    ## If empty? ? yes = set head, no = set tail?
    ## I don't quite understand what this is saying yet though

    ## first iteration
    # if empty?
    #   self.head = new_node(next_node_data)
    # else
    #   last_node(head).next_node = new_node(next_node_data)
    # end
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
    ### first iteration
    # if empty?
    #   ""
    # elsif head.tail?
    #   "#{head.data}"
    # elsif count == 2
    #   concat(head.data, head.next_node.data)
    # elsif count >= 3
    #   string_nodes(head.next_node, string_starter)
    # end
    ### refactored
    return "" if empty? # this will return a blank string if the empty method returns true
    return string_starter if head.tail? # this will return the head data if the head is the tail, checked using the tail? method which will return true if the head is the tail
    string_nodes(head.next_node, string_starter) # if the above isn't met, this will use the string_nodes method we created, which will take the head.next_node as the first parameter 
    
    ## Another way to define string from Chat GPT...
    # def to_string #this defines the to_string method, for which we can call on a linkedlist object, in this case list
    #   return "" if empty? #return "" if the empty? returns true, which uses the empty? method we created which checkes to see if the head is empty
    #   current_node = head #this sets a new variable called current_node to be the head
    #   result = "" #this sets a new variable that is an empty string, which is technically an array
    #   while current_node != nil #so long as the current node does not equal nil, do this...
    #     result += current_node.data.to_s + " " #this adds the current_nodes' data to the result string/array, converts it to a string, and then adds a space to the end of it (anticipating an array after)
    #     current_node = current_node.next_node #this sets the current node to equal the current node's next node, which makes this recursive, which will make this a loop that will run until the next node = nil
    #   end #this ends the while method's instructions
    #   result.strip #this applies the strip to the result variable, which will 
    # end
  end
  
  def string_nodes(shoes, string_starter)
    return concat(string_starter, shoes) if shoes.tail?
    string_nodes(shoes.next_node, concat(string_starter, shoes))
  end

  def concat(socks, shoes)
    "#{socks} #{shoes.data}" #this method will put together a node and the node after it
  end

  def string_starter
    "#{head.data}"
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

  def prepend(prepended_nodes_data)
    prepended_node = new_node(prepended_nodes_data)
    prepended_node.next_node = head
    self.head = prepended_node
  end

  def insert(position, inserted_nodes_data)
    #create an index
    inserted_node = new_node(inserted_nodes_data)
    prior_node = node_at(head, position - 1)
    next_node = node_at(head, position)
    prior_node.next_node = inserted_node
    inserted_node.next_node = next_node
    return inserted_node.data
  end
  
  def node_at(node, position)
   counter = 0
   target = node
   while counter < position
      target = target.next_node
      counter += 1
   end
   return target
  end

  def pop
    new_tail = node_at(head, count - 2)
    old_tail = new_tail.next_node
    new_tail.next_node = nil
    return "#{old_tail.data}"
  end
  
  def find(position, number_of_nodes)
    node = @head
    pointer = node_at(node, position)
    return_value = ""
    counter = 1
    while counter <= number_of_nodes
      # return_value += "#{pointer.data}"
      return_value += "#{pointer.data} "
      pointer = pointer.next_node
      counter += 1
    end
    return_value.rstrip 
  end

  def includes?(data)
    node = @head
    while node.data != data
      if node.tail?
        return false
      else
        node = node.next_node
      end
    end
    return true
  end
end

