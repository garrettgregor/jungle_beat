class JungleBeat
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    strings = data.split(" ")
    strings.each do |string|
      self.list.append(string)
    end
    return data
  end
end
