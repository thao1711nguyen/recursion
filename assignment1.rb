def fibs(n)
    result = [0,1]
    2.upto(n-1) do |num|
        result[num] = result[num-1] + result[num-2]
    end 
    result
end

def fibs_rec(n,result=[0,1])
    return result if n < 3 
    fibs_rec(n-1,result)
    result[n-1] = result[n-2] + result[n-3]
    result
end 

p fibs_rec(5)