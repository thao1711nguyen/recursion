def merge_sort(array)
    if array.size < 2
      array
    else
      left = merge_sort(array[0...array.size / 2])
      right = merge_sort(array[array.size / 2...array.size])
      merge(left, right)
    end
  end
  
  def merge(left, right, array = [])
    (left.size + right.size).times do
      if left.empty?
        array << right.shift
      elsif right.empty?
        array << left.shift
      else
        comparison = left <=> right
        if comparison == -1
          array << left.shift
        elsif comparison == 1
          array << right.shift
        else
          array << left.shift
        end
      end
    end
    array
  end
  
  arr = []
  rand(200).times do
    arr << rand(200)
  end
  
  p merge_sort(arr)