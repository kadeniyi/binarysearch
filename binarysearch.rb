class Array
  def toTwenty()
    return (1..20).to_a
  end
  
  def toForty()
    return (1..20).to_a.map{|n| n*2}
  end
  
  def toOneThousand()
    return (1..100).to_a.map{|n| n*10}
  end
  
  def search(num)
    arr = self.sort
    count = 0
    low =0 
    high = arr.length-1
    mid = (low + high)/2
      
      a = num if arr[high]==num
      a = num if arr[low]==num
      a = num if arr[mid]==num 
    
    while a != num && low <= high do
      
        if arr[mid]< num 
          low = mid + 1
          high = high -1
        else
          high = mid - 1
          low = low + 1
        end
        
          mid = (low + high)/2
        
      a = num if arr[high]==num
      a = num if arr[low]==num
      a = num if arr[mid]==num 
      
      count +=1
    end
   
    result = Hash.new
    result[:count] = count
    result[:index] = (self.include?num)? self.index(num): -1
    result[:length] = self.length
    
    return result
    
  end
end