class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = passengers

  end

  def drive()
    return "Brum brum"
  end

  def count_passengers
    @passengers.length()
  end

  def add_passenger(person)
      @passengers << person

  end

  def remove_passenger(person)
    for passenger in @passengers
      if passenger == person
        @bus.delete(person)
      end
    end
  end
end
