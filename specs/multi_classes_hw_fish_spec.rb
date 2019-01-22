# Codeclan Week 02 Day 02
# Multiple Class Interaction and Class Diagrams
# Ecosystem Homework - Fish Test Specifications

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../multi_classes_hw_fish.rb')

class FishTest < MiniTest::Test #inherit methods from minitest package
  def setup #create a fish object for test purposes, supply with mildly amusing name
    @fish = Fish.new("Wonda") # <- INstance variable for THIS instance of fish
  end

  def test_get_fish_name #test fish name assignment worked
    assert_equal("Wonda", @fish.name_string) #using an accessor method rather than a manual getter.
  end
end
