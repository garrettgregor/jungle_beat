class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(next_node_data)
    if empty?
      set_head(next_node_data)
    else
      set_tail(next_node_data)
    end
    next_node_data
  end

  def set_head(set_head_data)
    self.head = new_node(set_head_data)
  end

  def set_tail(set_tail_data)
    last_node(head).next_node = new_node(set_tail_data)
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
    count_node(node.next_node, counter += 1)
  end

  def count
    return 0 if empty?
    count_node(head, 1)
  end
  
  def to_string
    return "" if empty?
    return string_starter if head.tail?
    string_nodes(head.next_node, string_starter)
  end
  
  def string_nodes(shoes, string_starter)
    return concat(string_starter, shoes) if shoes.tail?
    string_nodes(shoes.next_node, concat(string_starter, shoes))
  end

  def concat(socks, shoes)
    "#{socks} #{shoes.data}"
  end

  def string_starter
    "#{head.data}"
  end

  def empty?
    head.nil?
  end

  def prepend(prepended_nodes_data)
    prepended_node = new_node(prepended_nodes_data)
    prepended_node.next_node = head
    self.head = prepended_node
  end

  def insert(position, inserted_nodes_data)
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

