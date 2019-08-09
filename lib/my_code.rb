def map(source_array)
  new = []
  i = 0
  while i < source_array.length do 
    new.push(yield(source_array[i]))
    i += 1
    end
  return new
end


#def reduce(source_array, starting_point = 0)
 # value = starting_point
  #source_array.each do |i|
   # value = yield(value, i)
#  end
#  return value                          
#end


def reduce(source_array, starting_point = 0)
  source_array[0].class == integer || float ? value = 0 : value = source_array[0]
  i = 0
  while i < source_array.length do
    value = yield(value, source_array[i])
    i += 1
  end
  return value
end
  

# source_array = [ false, nil, nil, nil, true]
# {|memo, n| memo || n}


=begin
def reduce_to_total(array, initializer = 0)
  value = 0
  array.each do |i|
    value += i
  end
  return value + initializer
end
=end

=begin
def reduce_to_any_true(array)
  i = 0 
  while i < array.length do
    if array[i] == true 
      return true
    end
    i += 1
  end
  return false
end
=end