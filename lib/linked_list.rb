class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(next_node_data)
    self.head = Node.new(next_node_data)
    next_node_data
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
end

