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
# If it is empty, assign the new node to the head of the list
# If it is not empty, find the last_node in the list
# Assign the last_node's next node to be our new node
    # self.head = Node.new(next_node_data)
    next_node_data
  end

  def set_head(set_head_data)
    self.head = new_node(set_head_data) #this is going to set the head using the new_node method
  end

  def set_tail(set_tail_data)
    last_node(head).next_node = new_node(set_tail_data)
  end
  
  def last_node(pants)
    return pants if (pants).tail?
    last_node(pants.next_node)
  end

  def new_node(new_node_data)
    Node.new(new_node_data)
  end

  def count
    if head.nil? # if the head of the list is 0, then...
      0
    else #otherwise...
      1
    end
  end

  def to_string
    "#{@head.data}"
  end


  def empty?
    if head != nil # this could be shortened to head.nil?
      false
    else
      true
    end
  end
end

