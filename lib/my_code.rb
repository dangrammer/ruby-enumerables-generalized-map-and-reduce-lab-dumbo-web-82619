def map(source_array)
  new = []
  i = 0
  while i < source_array.length do 
    new.push(yield(source_array[i]))
    i += 1
    end
  return new
end


def reduce(source_array, starting_point = 0)
  source_array[0].class == Integer ? value = starting_point : value = source_array[0]
  source_array.each do |i|
    value = yield(value, i)
  end
  return value                          
end

=begin
def reduce(source_array, starting_point = 0)
  source_array[0].class == Integer ? value = starting_point : value = source_array[0]
  i = 0
  while i < source_array.length do
    value = yield(value, source_array[i])
    i += 1
  end
  return value
end
=end 