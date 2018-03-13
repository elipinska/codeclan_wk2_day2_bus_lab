class Bus
attr_reader :route_number, :destination

def initialize(input_route_number, input_destination)
 @route_number = input_route_number
 @destination = input_destination
 @passengers = []
end

def drive()
  return "Brum Brum!"
end

def no_of_passengers()
  return @passengers.count()
end

def pick_up(person)
  @passengers.push(person)
end

def drop_off(person)
  @passengers.delete(person)
end

def remove_all()
  @passengers = []
end

def pick_up_from_stop(bus_stop)
    for person in bus_stop.queue()
      pick_up(person)
    end
    bus_stop.clear_queue()
  end


end
