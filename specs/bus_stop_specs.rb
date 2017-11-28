require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../bus")
require_relative("../person")

class TestBusStop < MiniTest::Test
def setup()
  @bus_stop = BusStop.new("Edinburgh Waverly Stand B",[])
  @person = Person.new("Joe", 25)
end
def test_has_name
  expected = "Edinburgh Waverly Stand B"
  actual = @bus_stop.name
  assert_equal(expected, actual)
end

def test_has_queue
  expected = []
  actual = @bus_stop.queue
  assert_equal(expected, actual)
end

def test_count_passengers_at_stop
  expected = 0
  actual = @bus_stop.count_passengers_at_stop
  assert_equal(expected, actual)
end

def test_add_passenger_at_stop
  @bus_stop.add_passenger_at_stop(@person)
  expected = 1
  actual = @bus_stop.count_passengers_at_stop
  assert_equal(expected, actual)
end

end
