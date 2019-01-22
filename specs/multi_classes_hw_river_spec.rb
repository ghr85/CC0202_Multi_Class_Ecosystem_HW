# Codeclan Week 02 Day 02
# Multiple Class Interaction and Class Diagrams
# Ecosystem Homework - River Test Specifications

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../multi_classes_hw_river.rb')
require_relative ('../multi_classes_hw_fish.rb')

class RiverTest < MiniTest::Test #inherit methods from minitest package

  def setup #set up initial data, note we're going to use a splat operator for ease

    @fish_object_1 = Fish.new("Wonda")
    @fish_object_2 = Fish.new("Nemo")
    @fish_object_3 = Fish.new("Jaws")
    @river_object = River.new("Euphrates",@fish_object_1,@fish_object_2, @fish_object_3)
  end

  def test_get_river_name #test get fish method using attr_reader
    assert_equal("Euphrates", @river_object.name_string)
  end

  def test_count_fish # test ability to count fish in array
    assert_equal(3,@river_object.count_fish)
  end
end
