require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../bus")
require_relative("../person")

class TestBusStop < MiniTest::Test
def setup()
  @bus_stop = BusStop.new("Edinburgh Waverly Stand B")
  @person = Person.new("Joe", 25)
end
def test_has_name
  expected = "Edinburgh Waverly Stand B"
  actual = @bus_stop.name
  assert_equal(expected, actual)
end
end
