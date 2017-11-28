class BusStop

  attr_reader :name, :queue

  def initialize(name, queue)
    @name = name
    @queue = queue
end
def count_passengers_at_stop
  @queue.length()
end

def add_passenger_at_stop(person)
      @queue << person
end

  end
