# Codeclan Week 02 Day 02
# Multiple Class Interaction and Class Diagrams
# Ecosystem Homework - River Test Specifications

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../multi_classes_hw_river.rb')
require_relative ('../multi_classes_hw_fish.rb')

class RiverTest < MiniTest::Test #inherit methods from minitest package

  def setup #set up initial data
    @river_name_string = River.new("Euphrates")
    @fish_object_1 = Fish.new("Wonda")
    @fish_object_2 = Fish.new("Nemo")
    @fish_object_3 = Fish.new("Jaws")
  end

  def test_get_river_name
    assert_equal("Euphrates", @river_name_string.name_string)
  end
end
