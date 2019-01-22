# Codeclan Week 02 Day 02
# Multiple Class Interaction and Class Diagrams
# Ecosystem Homework - Bear Test Specifications

require ('minitest/autorun') # require minitest tools
require ('minitest/rg')
require_relative ('../multi_classes_hw_fish.rb') #require all classes which will be used in testing
require_relative ('../multi_classes_hw_river.rb')
require_relative ('../multi_classes_hw_bear.rb')

class BearTest < MiniTest::Test #inherit methods from minitest package

  def setup #set up initial data, note we're going to use a splat operator for ease
    @fish_object_1 = Fish.new("Wonda") #create fish for river - could arguably do this in river object but this feels cleaner?
    @fish_object_2 = Fish.new("Nemo")
    @fish_object_3 = Fish.new("Jaws")
    @river_object = River.new("Tigris",@fish_object_1, @fish_object_2, @fish_object_3) 
    @bear_object = Bear.new("Paddington","Deepest Darkest Peruvian")
  end
  def test_get_name # check that you can access bear name
    assert_equal("Paddington",@bear_object.name_string)
  end

  def test_get_type #check that you can access bear type
    assert_equal("Deepest Darkest Peruvian",@bear_object.type_string)
  end

  def test_get_fish__bear #Check that get fish function moves last fish from river to bear
    @bear_object.get_fish(@river_object)
    assert_equal([@fish_object_3],@bear_object.food_array) #remember brackets around fish object
  end
  def test_get_fish__river # Check that same function removes fish from river
    @bear_object.get_fish(@river_object)
    assert_equal(2,@river_object.count_fish)
  end

  def test_count_food #count food items, check for multiples
    @bear_object.get_fish(@river_object)
    @bear_object.get_fish(@river_object)
    assert_equal(2, @bear_object.count_food)
  end
end
