
class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []

    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
   @internal_arr.insert(first_larger_index(new_ele),new_ele)
  end

  def size
    @internal_arr.size
  end

  def [](index)
    return @internal_arr[index]
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
   mid_index = (start_ind + end_ind)/2
    if start_ind >= end_ind
      return end_ind
    elsif @internal_arr[mid_index] == target
      return mid_index
    elsif target < @internal_arr[mid_index]
      return first_larger_index(target, start_ind, mid_index)
    else target > @internal_arr[mid_index]
      return first_larger_index(target, mid_index + 1, end_ind)
    end
  end

 def index(target, start_ind=0, end_ind=@internal_arr.length)
    until start_ind >= end_ind
      mid_ind = (end_ind-start_ind)/2 + start_ind
      mid_ele = @internal_arr[mid_ind]
      if mid_ele == target
        return mid_ind
      elsif mid_ele > target
        end_ind = mid_ind
      elsif mid_ele < target
        start_ind = mid_ind + 1
      end
    end
    return nil
  end
end
