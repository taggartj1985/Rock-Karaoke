require("minitest/autorun")
require('minitest/reporters')
require_relative('../guest')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Slash", 400)
    @guest2 = Guest.new("Mayer", 200)
    @guest3 = Guest.new("Fruscainte", 560)
  end

  def test_customer_name
    assert_equal("Slash", @guest1.name)
  end

  def test_customer_money
    assert_equal(200, @guest2.money)
  end

end
