module Enumerable
  # Your code goes here

  def my_each_with_index
    i = 0
    self.my_each do |n|
      yield(n, i)
      i += 1
    end
    self
  end

  def my_select
    ret_array = []
    self.my_each do |n|
      ret_array << n if yield(n)
    end
    ret_array
  end

  def my_all?
    condition = true
    self.my_each do |n|
      condition = false unless yield(n)
    end
    condition
  end

  def my_any?
    condition = false
    self.my_each do |n|
      condition = true if yield(n)
    end
    condition
  end

  def my_none?
    condition = true
    self.my_each do |n|
      condition = false if yield(n)
    end
    condition
  end

  def my_count

    length unless block_given?

    total = 0
    self.my_each do |n|
      total += 1 if yield(n)
    end
    total
  end

  def my_map
    ret_array = []
    self.my_each do |n|
      ret_array << yield(n)
    end
    ret_array
  end

  def my_inject(initial_value = 0) # inject is same as reduce
    value = initial_value
    self.my_each do |n|
      value = yield(value, n)
    end
    value
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for i in 0...length
      yield(at(i))
    end
    self
  end
end

# x = [1,2,3,4]
# x.my_each_with_index