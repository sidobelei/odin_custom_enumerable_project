module Enumerable
  # Your code goes here

  def my_each_with_index
    index = 0
    self.my_each do |element| 
      yield(element, index)
      index += 1
    end
    return self
  end

  def my_select
    array = []
    self.my_each {|element| array.push(element) if yield(element)} 
    return array
  end

  def my_all?
    boolean = true
    self.each do |element|
      unless yield(element)
        boolean = false
        break
      end
    end
    return boolean
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
    while index < self.length  
      element = self[index]
      yield(element)
      index += 1
    end
    return self
  end
end
