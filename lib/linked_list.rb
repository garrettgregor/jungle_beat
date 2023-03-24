class LinkedList
  attr_reader :head,
              :list_count
  def initialize
    @head = nil
    @list_count = 0
  end

  def append(data)
    node = Node.new(data)
    @head = node
    node.data
  end
  
  def count
    @list_count += 1 if !@head.data.nil?
    # if @head.data != nil
    #   @list_count += 1
    # else
    #   0
    # end
    @list_count
  end
  
  def to_string
    node.data
  end
  
end


