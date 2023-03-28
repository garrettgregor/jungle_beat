class JungleBeat
  attr_reader :list
              :replacement_beat
  def initialize(replacement_beat = "deep")
    @list = LinkedList.new
    @replacement_beat = replacement_beat
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
  
  valid_beats = ["tee", "dee", "deep", "bop", "boop", "la", "na"]

  def validate_beats(data)
    return_value = valid_beats.find do |valid_beat|
      valid_beat.include?(data)
    end
    if return_value == true
      data
    else
      @replacement_beat
    end
  end

  def all
    to_check = self.list.to_string
    to_validate = to_check.split(" ")
    return_value = validate_beats(to_validate)
    if return_value == replacement_beat
      self.list.insert()
    end
    # chang whole list to array
    # check to see if any thing in the array isn't in the valid_beats array
    # if it is not in the valid beats, insert replacement_beat

  end

  def play
    beats = "#{self.list.to_string}"
    return `say -r 500 -v Boing #{beats}`  
  end
end
