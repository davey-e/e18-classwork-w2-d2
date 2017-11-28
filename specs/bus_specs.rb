require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")

class TestBus < MiniTest::Test
def setup()
  @bus = Bus.new(22, "Edinburgh", [])
  @person = Person.new("Joe", 25)
end

def test_has_route_number
  expected = 22
  actual = @bus.route_number
  assert_equal(expected, actual)
end

def test_bus_can_drive
  expected = "Brum brum"
  actual = @bus.drive()
  assert_equal(expected, actual)
end

def test_bus_has_passengers
  expected = []
  actual = @bus.passengers
  assert_equal(expected, actual)
end
def test_count_passengers
  expected = 0
  actual = @bus.count_passengers
  assert_equal(expected, actual)
end

def test_add_passenger
  @bus.add_passenger(@person)
  expected = 1
  actual = @bus.count_passengers
  assert_equal(expected, actual)
end

def test_remove_passenger
  @bus.remove_passenger(@person)
  expected = 0
  actual = @bus.count_passengers
  assert_equal(expected, actual)
end

def test_remove_all_passengers
  @bus.remove_all_passengers
  expected = 0
  actual = @bus.count_passengers
  assert_equal(expected, actual)
end
end
