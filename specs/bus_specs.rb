require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")

class TestBus < MiniTest::Test
def setup()
  @bus = Bus.new(22, "Edinburgh")
end

def test_has_route_number
  expected = 22
  actual = @bus.route_number
  assert_equal(expected, actual)
end

end
