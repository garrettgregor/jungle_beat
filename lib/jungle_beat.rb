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
  
  def count
    self.list.count
  end

  def play
    beats = "#{self.list.to_string}"
    return `say -r 500 -v Boing #{beats}`  
  end
end
