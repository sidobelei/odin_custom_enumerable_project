module Enumerable
  # Your code goes here

  def my_each_with_index
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    index = 0
    while i < self.length  
      element = self[index]
      yield(element)
      index += 1
    end
    return self
  end
end
