class BusStop
  attr_reader :name, :queue

  def initialize(input_name)
    @name = input_name
    @queue = []
  end

  def add_to_queue(person)
    @queue.push(person)
  end

  def clear_queue()
    @queue.clear()
  end

end
