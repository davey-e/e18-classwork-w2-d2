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
  expected = 10
  actual = @bus.has_passengers?
end
end
