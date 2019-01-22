# Codeclan Week 02 Day 02
# Multiple Class Interaction and Class Diagrams
# Ecosystem Homework - Fish Class

#fish array, add fish, count fish
class River

attr_reader :name_string
attr_accessor :fish_objects_array

  def initialize(name_string,*fish_object_args) #SPLAT! One argument, creates an array for you.
    @name_string = name_string
    @fish_objects_array = fish_object_args #Note that splat doesn't exist in Java - elipsis (...) does the same trick
  end

  def count_fish
    return @fish_objects_array.count
  end

end
