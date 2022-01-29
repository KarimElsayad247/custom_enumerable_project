module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    my_each do |obj|
      yield obj, i
      i += 1
    end
    return self
  end

  def my_all?(&block)
    my_each do |obj|
      return false unless block.call(obj)
    end
    return true
  end

  def my_any?(&block)
    my_each do |obj|
      return true if block.call(obj)
    end
    return false
  end

  def my_count(item=nil, &block)
    total = 0
    my_each do |obj|
      if block_given?
        total += 1 if block.call(obj)
      else
        if item != nil
          total += 1 if obj == item
        else
          total += 1
        end
      end
    end
    return total
  end

  def my_inject
  end

  def my_map
  end

  def my_none?(&block)
    my_each do |obj|
      return false if block.call(obj)
    end
    return true
  end

  def my_select
  end

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
