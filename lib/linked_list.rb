class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(next_node_data)
#Create a new node with the input string - list.append('Rhodes')
    # new_node = Node.new(next_node_data)
# Check if the linked list is empty
    if empty?
      self.head = new_node(next_node_data)
    else
      last_node(head).next_node = new_node(next_node_data)
    end
# If it is empty, assign the new node to the head of the list
# If it is not empty, find the last_node in the list
# Assign the last_node's next node to be our new node
    # self.head = Node.new(next_node_data)
    next_node_data
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

  def last_node(pants)
    return pants if (pants).tail?
    last_node(pants.next_node)
  end

  def empty?
    if head != nil # this could be shortened to head.nil?
      false
    else
      true
    end
  end
end

