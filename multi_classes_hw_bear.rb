# Codeclan Week 02 Day 02
# Multiple Class Interaction and Class Diagrams
# Ecosystem Homework - Bear Class

class Bear
  attr_reader :name_string, :type_string
  attr_accessor :food_array

  def initialize(name_string,type_string) # set up inital data
    @name_string = name_string
    @type_string = type_string
    @food_array = [] #this will always be an empty array, assume it's post hibernation
  end

  def get_fish(river_object)
    @food_array << river_object.fish_objects_array.pop #LIFO
    return @food_array
  end

  def count_food
    return @food_array.count #count elements in food array
  end
end
