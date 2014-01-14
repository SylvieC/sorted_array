
class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    raise NotImplementedError.new("You need to implement the add method!")
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
    # If start_ind > end_ind, the target can't be in the search space.
    until start_ind >= end_ind
      # Calculate the halfway point
      mid_ind = (end_ind-start_ind)/2 + start_ind
      # Get the halfway element
      mid_ele = @internal_arr[mid_ind]
      # Is the target right in the middle?
      if mid_ele == target
        return mid_ind # return it.
      elsif mid_ele > target
        # Since the middle element is > than the target
        # We know the target is in the left half of the search space
        end_ind = mid_ind
      elsif mid_ele < target
        # Since the middle element is < than the target
        # We know the target is in the right half of the search space
        start_ind = mid_ind + 1
      end
    end
    return nil
  end
end
=begin
class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []


    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    # Hint: Use the Array#insert method.
    raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
    @internal_arr.index
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

#it returns nil if the target is not in the array, otherwise, it finds the middle index and r
#it finds the mid index, and check if it is the target, if it is, return the index of the mid element
#if the target if higher than the mid element, it       
def index(target, start_ind=0, end_ind=@internal_arr.length)
    # If start_ind > end_ind, the target can't be in the search space.
    until start_ind >= end_ind
      # Calculate the halfway point
      mid_ind = (end_ind-start_ind)/2 + start_ind
      # Get the halfway element
      mid_ele = @internal_arr[mid_ind]
      # Is the target right in the middle?
      if mid_ele == target
        return mid_ind # return it.
      elsif mid_ele > target
        # Since the middle element is > than the target
        # We know the target is in the left half of the search space
        end_ind = mid_ind
      elsif mid_ele < target
        # Since the middle element is < than the target
        # We know the target is in the right half of the search space
        start_ind = mid_ind + 1
      end
    end
    return nil
  end

end
=end

