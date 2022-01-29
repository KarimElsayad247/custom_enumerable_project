module Enumerable
  # Your code goes here
  def my_each_with_index
    size.times do |i|
      yield at(i), i
    end
    return self
  end

  # def my_
  # end

  # def my_
  # end

  # def my_
  # end

  # def my_
  # end

  # def my_
  # end

  # def my_
  # end

  # def my_
  # end

  # def my_
  # end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    size.times do |i|
      yield at(i)
    end
    return self
  end
end
