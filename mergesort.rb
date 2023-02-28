def mergesort(array)
    if array.length == 1 
        return 
    else 
        leftHalf = array[0...array.length/2]
        rightHalf = array[array.length/2..-1]
        mergesort(leftHalf)
        mergesort(rightHalf)
        array.each_index do |index|         
            if  rightHalf.empty? || (!leftHalf.empty? && leftHalf[0] <= rightHalf[0])
                array[index] = leftHalf[0]
                leftHalf.shift
            else 
                array[index] = rightHalf[0]
                rightHalf
                .shift
            end
        end
    end
    array
end
p mergesort([4,3,9,14])
