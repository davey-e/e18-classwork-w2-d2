require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class TestPerson < MiniTest::Test
def setup()
  @person = Person.new("Joe", 25)
end
def test_has_name
  expected = "Joe"
  actual = @person.name
  assert_equal(expected, actual)
end


end
