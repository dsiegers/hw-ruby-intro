# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  for i in arr
    total += i
  end
  return total
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    max1 = arr[0]
    max2 = arr[1]
    arr.shift
    arr.shift
    for i in arr
      if i > max1
        max2 = max1
        max1 = i
      elsif i > max2
        max2 = i
      end
    end
  end
  return max1 + max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 1
    return false
  end
  for i in 0.. arr.length-1
    for j in i+1..arr.length-1
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  for i in 0..s.length-1
    if s[i] != '1' and s[i] != '0'
      return false
    end
  end
  len = s.length
  if s[len-1] == '0' and s[len-2] == '0'
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new(
      "Value of book must be greater than 0."
    )if price <= 0

    raise ArgumentError.new(
      "ISBN cannot be an empty string"
    )if isbn == ""
    
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f" % @price
  end
end
