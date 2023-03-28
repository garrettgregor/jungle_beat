class Node
  attr_reader :data 
  attr_accessor :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end

  def tail?
    if next_node == nil
      true
    else
      false
    end
  end
end