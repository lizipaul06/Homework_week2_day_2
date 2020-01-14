require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../River")
require_relative('../Bear.rb')

class TestBus < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon")


  end

  def test_river_name
    assert_equal("Amazon", @river.check_name("Amazon"))
  end

  def test_count_fish
    assert_equal(4, @river.count_fish)
  end

  def test_delete_fish
    @river.lose_fish("fish_1")
    assert_equal(3, @river.count_fish)
  end

  def test_add_fish_to_stomach
    @bear.add_fish_to_stomach("fish_1", @river)
    assert_equal(1, @bear.food_count)
    assert_equal(3, @river.count_fish)
end

def test_roar
  assert_equal("ROAR! I'm a bear!", @bear.roar)
end
end
