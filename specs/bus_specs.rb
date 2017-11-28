require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")

class TestBus < MiniTest::Test
def setup()
  @bus = Bus.new(22, "Edinburgh", [])
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
end
